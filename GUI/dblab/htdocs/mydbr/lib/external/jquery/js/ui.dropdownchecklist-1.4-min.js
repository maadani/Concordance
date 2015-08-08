;(function($){$.widget("ui.dropdownchecklist",{version:function(){alert('DropDownCheckList v1.4');},_appendDropContainer:function(controlItem){var wrapper=$("<div/>");wrapper.addClass("ui-dropdownchecklist ui-dropdownchecklist-dropcontainer-wrapper");wrapper.addClass("ui-widget");wrapper.attr("id",controlItem.attr("id")+'-ddw');wrapper.css({position:'absolute',left:"-33000px",top:"-33000px"});var container=$("<div/>");container.addClass("ui-dropdownchecklist-dropcontainer ui-widget-content");container.css("overflow-y","auto");wrapper.append(container);wrapper.insertAfter(controlItem);wrapper.isOpen=false;return wrapper;},_isDropDownKeyShortcut:function(e,keycode){return e.altKey&&($.ui.keyCode.DOWN==keycode);},_isDropDownCloseKey:function(e,keycode){return($.ui.keyCode.ESCAPE==keycode)||($.ui.keyCode.ENTER==keycode);},_keyFocusChange:function(target,delta,limitToItems){var focusables=$(":focusable");var index=focusables.index(target);if(index>=0){index+=delta;if(limitToItems){var allCheckboxes=this.dropWrapper.find("input:not([disabled])");var firstIndex=focusables.index(allCheckboxes.get(0));var lastIndex=focusables.index(allCheckboxes.get(allCheckboxes.length-1));if(index<firstIndex){index=lastIndex;}else if(index>lastIndex){index=firstIndex;}}
focusables.get(index).focus();}},_handleKeyboard:function(e){var self=this;var keyCode=(e.keyCode||e.which);if(!self.dropWrapper.isOpen&&self._isDropDownKeyShortcut(e,keyCode)){e.stopImmediatePropagation();self._toggleDropContainer(true);}else if(self.dropWrapper.isOpen&&self._isDropDownCloseKey(e,keyCode)){e.stopImmediatePropagation();self._toggleDropContainer(false);self.controlSelector.focus();}else if(self.dropWrapper.isOpen&&(e.target.type=='checkbox')&&((keyCode==$.ui.keyCode.DOWN)||(keyCode==$.ui.keyCode.UP))){e.stopImmediatePropagation();self._keyFocusChange(e.target,(keyCode==$.ui.keyCode.DOWN)?1:-1,true);}else if(self.dropWrapper.isOpen&&(keyCode==$.ui.keyCode.TAB)){}},_handleFocus:function(e,focusIn,forDropdown){var self=this;if(forDropdown&&!self.dropWrapper.isOpen){e.stopImmediatePropagation();if(focusIn){self.controlSelector.addClass("ui-state-hover");if($.ui.dropdownchecklist.gLastOpened!=null){$.ui.dropdownchecklist.gLastOpened._toggleDropContainer(false);}}else{self.controlSelector.removeClass("ui-state-hover");}}else if(!forDropdown&&!focusIn){if(e!=null){e.stopImmediatePropagation();}
self.controlSelector.removeClass("ui-state-hover");self._toggleDropContainer(false);}},_cancelBlur:function(e){var self=this;if(self.blurringItem!=null){clearTimeout(self.blurringItem);self.blurringItem=null;}},_appendControl:function(){var self=this,sourceSelect=this.sourceSelect,options=this.options;var wrapper=$("<span/>");wrapper.addClass("ui-dropdownchecklist ui-dropdownchecklist-selector-wrapper ui-widget");wrapper.css({display:"inline-block",cursor:"default",overflow:"hidden"});var baseID=sourceSelect.attr("id");if((baseID==null)||(baseID=="")){baseID="ddcl-"+$.ui.dropdownchecklist.gIDCounter++;}else{baseID="ddcl-"+baseID;}
wrapper.attr("id",baseID);var control=$("<span/>");control.addClass("ui-dropdownchecklist-selector ui-state-default");control.css({display:"inline-block",overflow:"hidden",'white-space':'nowrap'});var tabIndex=sourceSelect.attr("tabIndex");if(tabIndex==null){tabIndex=0;}else{tabIndex=parseInt(tabIndex);if(tabIndex<0){tabIndex=0;}}
control.attr("tabIndex",tabIndex);control.keyup(function(e){self._handleKeyboard(e);});control.focus(function(e){self._handleFocus(e,true,true);});control.blur(function(e){self._handleFocus(e,false,true);});wrapper.append(control);if(options.icon!=null){var iconPlacement=(options.icon.placement==null)?"left":options.icon.placement;var anIcon=$("<div/>");anIcon.addClass("ui-icon");anIcon.addClass((options.icon.toOpen!=null)?options.icon.toOpen:"ui-icon-triangle-1-e");anIcon.css({'float':iconPlacement});control.append(anIcon);}
var textContainer=$("<span/>");textContainer.addClass("ui-dropdownchecklist-text");textContainer.css({display:"inline-block",'white-space':"nowrap",overflow:"hidden"});control.append(textContainer);wrapper.hover(function(){if(!self.disabled){control.addClass("ui-state-hover");}},function(){if(!self.disabled){control.removeClass("ui-state-hover");}});wrapper.click(function(event){if(!self.disabled){event.stopImmediatePropagation();self._toggleDropContainer(!self.dropWrapper.isOpen);}});wrapper.insertAfter(sourceSelect);$(window).resize(function(){if(!self.disabled&&self.dropWrapper.isOpen){self._toggleDropContainer(true);}});return wrapper;},_createDropItem:function(index,tabIndex,value,text,optCss,checked,disabled,indent){var self=this,options=this.options,sourceSelect=this.sourceSelect,controlWrapper=this.controlWrapper;var item=$("<div/>");item.addClass("ui-dropdownchecklist-item");item.css({'white-space':"nowrap"});var checkedString=checked?' checked="checked"':'';var classString=disabled?' class="inactive"':' class="active"';var idBase=controlWrapper.attr("id");var id=idBase+'-i'+index;var checkBox;if(self.isMultiple){checkBox=$('<input disabled type="checkbox" id="'+id+'"'+checkedString+classString+' tabindex="'+tabIndex+'" />');}else{checkBox=$('<input disabled type="radio" id="'+id+'" name="'+idBase+'"'+checkedString+classString+' tabindex="'+tabIndex+'" />');}
checkBox=checkBox.attr("index",index).val(value);item.append(checkBox);var label=$("<label for="+id+"/>");label.addClass("ui-dropdownchecklist-text");if(optCss!=null)label.attr('style',optCss);label.css({cursor:"default"});label.html(text);if(indent){item.addClass("ui-dropdownchecklist-indent");}
item.addClass("ui-state-default");if(disabled){item.addClass("ui-state-disabled");}
label.click(function(e){e.stopImmediatePropagation();});item.append(label);item.hover(function(e){var anItem=$(this);if(!anItem.hasClass("ui-state-disabled")){anItem.addClass("ui-state-hover");}},function(e){var anItem=$(this);anItem.removeClass("ui-state-hover");});checkBox.click(function(e){var aCheckBox=$(this);e.stopImmediatePropagation();if(aCheckBox.hasClass("active")){var callback=self.options.onItemClick;if($.isFunction(callback))try{callback.call(self,aCheckBox,sourceSelect.get(0));}catch(ex){aCheckBox.prop("checked",!aCheckBox.prop("checked"));self._syncSelected(aCheckBox);return;}
self._syncSelected(aCheckBox);self.sourceSelect.trigger("change",'ddcl_internal');if(!self.isMultiple&&options.closeRadioOnClick){self._toggleDropContainer(false);}}});item.click(function(e){var anItem=$(this);e.stopImmediatePropagation();if(!anItem.hasClass("ui-state-disabled")){var aCheckBox=anItem.find("input");var checked=aCheckBox.prop("checked");aCheckBox.prop("checked",!checked);var callback=self.options.onItemClick;if($.isFunction(callback))try{callback.call(self,aCheckBox,sourceSelect.get(0));}catch(ex){aCheckBox.prop("checked",checked);self._syncSelected(aCheckBox);return;}
self._syncSelected(aCheckBox);self.sourceSelect.trigger("change",'ddcl_internal');if(!checked&&!self.isMultiple&&options.closeRadioOnClick){self._toggleDropContainer(false);}}else{anItem.focus();self._cancelBlur();}});item.focus(function(e){var anItem=$(this);e.stopImmediatePropagation();});item.keyup(function(e){self._handleKeyboard(e);});return item;},_createGroupItem:function(text,disabled){var self=this;var group=$("<div />");group.addClass("ui-dropdownchecklist-group ui-widget-header");if(disabled){group.addClass("ui-state-disabled");}
group.css({'white-space':"nowrap"});var label=$("<span/>");label.addClass("ui-dropdownchecklist-text");label.css({cursor:"default"});label.text(text);group.append(label);group.click(function(e){var aGroup=$(this);e.stopImmediatePropagation();aGroup.focus();self._cancelBlur();});group.focus(function(e){var aGroup=$(this);e.stopImmediatePropagation();});return group;},_createCloseItem:function(text){var self=this;var closeItem=$("<div />");closeItem.addClass("ui-state-default ui-dropdownchecklist-close ui-dropdownchecklist-item");closeItem.css({'white-space':'nowrap','text-align':'right'});var label=$("<span/>");label.addClass("ui-dropdownchecklist-text");label.css({cursor:"default"});label.html(text);closeItem.append(label);closeItem.click(function(e){var aGroup=$(this);e.stopImmediatePropagation();aGroup.focus();self._toggleDropContainer(false);});closeItem.hover(function(e){$(this).addClass("ui-state-hover");},function(e){$(this).removeClass("ui-state-hover");});closeItem.focus(function(e){var aGroup=$(this);e.stopImmediatePropagation();});return closeItem;},_appendItems:function(){var self=this,config=this.options,sourceSelect=this.sourceSelect,dropWrapper=this.dropWrapper;var dropContainerDiv=dropWrapper.find(".ui-dropdownchecklist-dropcontainer");sourceSelect.children().each(function(index){var opt=$(this);if(opt.is("option")){self._appendOption(opt,dropContainerDiv,index,false,false);}else if(opt.is("optgroup")){var disabled=opt.prop("disabled");var text=opt.attr("label");if(text!=""){var group=self._createGroupItem(text,disabled);dropContainerDiv.append(group);}
self._appendOptions(opt,dropContainerDiv,index,true,disabled);}});if(config.explicitClose!=null){var closeItem=self._createCloseItem(config.explicitClose);dropContainerDiv.append(closeItem);}
var divWidth=dropContainerDiv.outerWidth();var divHeight=dropContainerDiv.outerHeight();return{width:divWidth,height:divHeight};},_appendOptions:function(parent,container,parentIndex,indent,forceDisabled){var self=this;parent.children("option").each(function(index){var option=$(this);var childIndex=(parentIndex+"."+index);self._appendOption(option,container,childIndex,indent,forceDisabled);});},_appendOption:function(option,container,index,indent,forceDisabled){var self=this;var text=option.html();if((text!=null)&&(text!='')){var value=option.val();var optCss=option.attr('style');var selected=option.prop("selected");var disabled=(forceDisabled||option.prop("disabled"));var tabIndex=self.controlSelector.attr("tabindex");var item=self._createDropItem(index,tabIndex,value,text,optCss,selected,disabled,indent);container.append(item);}},_syncSelected:function(senderCheckbox){var self=this,options=this.options,sourceSelect=this.sourceSelect,dropWrapper=this.dropWrapper;var selectOptions=sourceSelect.get(0).options;var allCheckboxes=dropWrapper.find("input.active");if(options.firstItemChecksAll=='exclusive'){if((senderCheckbox==null)&&$(selectOptions[0]).prop("selected")){allCheckboxes.prop("checked",false);$(allCheckboxes[0]).prop("checked",true);}else if((senderCheckbox!=null)&&(senderCheckbox.attr("index")==0)){var firstIsActive=senderCheckbox.prop("checked");allCheckboxes.prop("checked",false);$(allCheckboxes[0]).prop("checked",firstIsActive);}else{var allChecked=true;var firstCheckbox=null;allCheckboxes.each(function(index){if(index>0){var checked=$(this).prop("checked");if(!checked){allChecked=false;}}else{firstCheckbox=$(this);}});if(firstCheckbox!=null){if(allChecked){allCheckboxes.prop("checked",false);}
firstCheckbox.prop("checked",allChecked);}}}else if(options.firstItemChecksAll){if((senderCheckbox==null)&&$(selectOptions[0]).prop("selected")){allCheckboxes.prop("checked",true);}else if((senderCheckbox!=null)&&(senderCheckbox.attr("index")==0)){allCheckboxes.prop("checked",senderCheckbox.prop("checked"));}else{var allChecked=true;var firstCheckbox=null;allCheckboxes.each(function(index){if(index>0){var checked=$(this).prop("checked");if(!checked){allChecked=false;}}else{firstCheckbox=$(this);}});if(firstCheckbox!=null){firstCheckbox.prop("checked",allChecked);}}}
var empties=0;allCheckboxes=dropWrapper.find("input[type=checkbox]");allCheckboxes.each(function(index){var anOption=$(selectOptions[index+empties]);var optionText=anOption.html();if((optionText==null)||(optionText=='')){empties+=1;anOption=$(selectOptions[index+empties]);}
anOption.prop("selected",$(this).prop("checked"));});self._updateControlText();if(senderCheckbox!=null){senderCheckbox.focus();}},_sourceSelectChangeHandler:function(event){var self=this,dropWrapper=this.dropWrapper;dropWrapper.find("input").val(self.sourceSelect.val());self._updateControlText();},_updateControlText:function(){var self=this,sourceSelect=this.sourceSelect,options=this.options,controlWrapper=this.controlWrapper;var firstOption=sourceSelect.find("option:first");var selectOptions=sourceSelect.find("option");var text=self._formatText(selectOptions,options.firstItemChecksAll,firstOption);var controlLabel=controlWrapper.find(".ui-dropdownchecklist-text");controlLabel.html(text);controlLabel.attr("title",controlLabel.text());},_formatText:function(selectOptions,firstItemChecksAll,firstOption){var text;if($.isFunction(this.options.textFormatFunction)){try{text=this.options.textFormatFunction(selectOptions);}catch(ex){alert('textFormatFunction failed: '+ex);}}else if(firstItemChecksAll&&(firstOption!=null)&&firstOption.prop("selected")){text=firstOption.html();}else{text="";selectOptions.each(function(){if($(this).prop("selected")){if(text!=""){text+=", ";}
var optCss=$(this).attr('style');var tempspan=$('<span/>');tempspan.html($(this).html());if(optCss==null){text+=tempspan.html();}else{tempspan.attr('style',optCss);text+=$("<span/>").append(tempspan).html();}}});if(text==""){text=(this.options.emptyText!=null)?this.options.emptyText:"&nbsp;";}}
return text;},_toggleDropContainer:function(makeOpen){var self=this;var hide=function(instance){if((instance!=null)&&instance.dropWrapper.isOpen){instance.dropWrapper.isOpen=false;$.ui.dropdownchecklist.gLastOpened=null;var config=instance.options;instance.dropWrapper.css({top:"-33000px",left:"-33000px"});var aControl=instance.controlSelector;aControl.removeClass("ui-state-active");aControl.removeClass("ui-state-hover");var anIcon=instance.controlWrapper.find(".ui-icon");if(anIcon.length>0){anIcon.removeClass((config.icon.toClose!=null)?config.icon.toClose:"ui-icon-triangle-1-s");anIcon.addClass((config.icon.toOpen!=null)?config.icon.toOpen:"ui-icon-triangle-1-e");}
$(document).unbind("click",hide);instance.dropWrapper.find("input.active").prop("disabled",true);if($.isFunction(config.onComplete)){try{config.onComplete.call(instance,instance.sourceSelect.get(0));}catch(ex){alert('callback failed: '+ex);}}}};var show=function(instance){if(!instance.dropWrapper.isOpen){instance.dropWrapper.isOpen=true;$.ui.dropdownchecklist.gLastOpened=instance;var config=instance.options;if((config.positionHow==null)||(config.positionHow=='absolute')){instance.dropWrapper.css({position:'absolute',top:instance.controlWrapper.position().top+instance.controlWrapper.outerHeight()+"px",left:instance.controlWrapper.position().left+"px"});}else if(config.positionHow=='relative'){instance.dropWrapper.css({position:'relative',top:"0px",left:"0px"});}
var zIndex=0;if(config.zIndex==null){var ancestorsZIndexes=instance.controlWrapper.parents().map(function(){var zIndex=$(this).css("z-index");return isNaN(zIndex)?0:zIndex;}).get();var parentZIndex=Math.max.apply(Math,ancestorsZIndexes);if(parentZIndex>=0)zIndex=parentZIndex+1;}else{zIndex=parseInt(config.zIndex);}
if(zIndex>0){instance.dropWrapper.css({'z-index':zIndex});}
var aControl=instance.controlSelector;aControl.addClass("ui-state-active");aControl.removeClass("ui-state-hover");var anIcon=instance.controlWrapper.find(".ui-icon");if(anIcon.length>0){anIcon.removeClass((config.icon.toOpen!=null)?config.icon.toOpen:"ui-icon-triangle-1-e");anIcon.addClass((config.icon.toClose!=null)?config.icon.toClose:"ui-icon-triangle-1-s");}
$(document).bind("click",function(e){hide(instance);});var activeItems=instance.dropWrapper.find("input.active");activeItems.prop("disabled",false);var firstActiveItem=activeItems.get(0);if(firstActiveItem!=null){firstActiveItem.focus();}}};if(makeOpen){hide($.ui.dropdownchecklist.gLastOpened);show(self);}else{hide(self);}},_setSize:function(dropCalculatedSize){var options=this.options,dropWrapper=this.dropWrapper,controlWrapper=this.controlWrapper;var controlWidth=dropCalculatedSize.width;if(options.width!=null){controlWidth=parseInt(options.width);}else if(options.minWidth!=null){var minWidth=parseInt(options.minWidth);if(controlWidth<minWidth){controlWidth=minWidth;}}
var control=this.controlSelector;control.css({width:controlWidth+"px"});var controlText=control.find(".ui-dropdownchecklist-text");var controlIcon=control.find(".ui-icon");if(controlIcon!=null){controlWidth-=(controlIcon.outerWidth()+4);controlText.css({width:controlWidth+"px"});}
controlWidth=controlWrapper.outerWidth();var maxDropHeight=(options.maxDropHeight!=null)?parseInt(options.maxDropHeight):-1;var dropHeight=((maxDropHeight>0)&&(dropCalculatedSize.height>maxDropHeight))?maxDropHeight:dropCalculatedSize.height;var dropWidth=dropCalculatedSize.width<controlWidth?controlWidth:dropCalculatedSize.width;$(dropWrapper).css({height:dropHeight+"px",width:dropWidth+"px"});dropWrapper.find(".ui-dropdownchecklist-dropcontainer").css({height:dropHeight+"px"});},_init:function(){var self=this,options=this.options;if($.ui.dropdownchecklist.gIDCounter==null){$.ui.dropdownchecklist.gIDCounter=1;}
self.blurringItem=null;var sourceSelect=self.element;self.initialDisplay=sourceSelect.css("display");sourceSelect.css("display","none");self.initialMultiple=sourceSelect.prop("multiple");self.isMultiple=self.initialMultiple;if(options.forceMultiple!=null){self.isMultiple=options.forceMultiple;}
sourceSelect.prop("multiple",true);self.sourceSelect=sourceSelect;var controlWrapper=self._appendControl();self.controlWrapper=controlWrapper;self.controlSelector=controlWrapper.find(".ui-dropdownchecklist-selector");var dropWrapper=self._appendDropContainer(controlWrapper);self.dropWrapper=dropWrapper;var dropCalculatedSize=self._appendItems();self._updateControlText(controlWrapper,dropWrapper,sourceSelect);self._setSize(dropCalculatedSize);if(options.firstItemChecksAll){self._syncSelected(null);}
if(options.bgiframe&&typeof self.dropWrapper.bgiframe=="function"){self.dropWrapper.bgiframe();}
self.sourceSelect.change(function(event,eventName){if(eventName!='ddcl_internal'){self._sourceSelectChangeHandler(event);}});},_refreshOption:function(item,disabled,selected){var aParent=item.parent();if(disabled){item.prop("disabled",true);item.removeClass("active");item.addClass("inactive");aParent.addClass("ui-state-disabled");}else{item.prop("disabled",false);item.removeClass("inactive");item.addClass("active");aParent.removeClass("ui-state-disabled");}
item.prop("checked",selected);},_refreshGroup:function(group,disabled){if(disabled){group.addClass("ui-state-disabled");}else{group.removeClass("ui-state-disabled");}},close:function(){this._toggleDropContainer(false);},refresh:function(){var self=this,sourceSelect=this.sourceSelect,dropWrapper=this.dropWrapper;var allCheckBoxes=dropWrapper.find("input");var allGroups=dropWrapper.find(".ui-dropdownchecklist-group");var groupCount=0;var optionCount=0;sourceSelect.children().each(function(index){var opt=$(this);var disabled=opt.prop("disabled");if(opt.is("option")){var selected=opt.prop("selected");var anItem=$(allCheckBoxes[optionCount]);self._refreshOption(anItem,disabled,selected);optionCount+=1;}else if(opt.is("optgroup")){var text=opt.attr("label");if(text!=""){var aGroup=$(allGroups[groupCount]);self._refreshGroup(aGroup,disabled);groupCount+=1;}
opt.children("option").each(function(){var subopt=$(this);var subdisabled=(disabled||subopt.prop("disabled"));var selected=subopt.prop("selected");var subItem=$(allCheckBoxes[optionCount]);self._refreshOption(subItem,subdisabled,selected);optionCount+=1;});}});self._syncSelected(null);},enable:function(){this.controlSelector.removeClass("ui-state-disabled");this.disabled=false;},disable:function(){this.controlSelector.addClass("ui-state-disabled");this.disabled=true;},destroy:function(){$.Widget.prototype.destroy.apply(this,arguments);this.sourceSelect.css("display",this.initialDisplay);this.sourceSelect.prop("multiple",this.initialMultiple);this.controlWrapper.unbind().remove();this.dropWrapper.remove();}});$.extend($.ui.dropdownchecklist,{defaults:{width:null,maxDropHeight:null,firstItemChecksAll:false,closeRadioOnClick:false,minWidth:50,positionHow:'absolute',bgiframe:false,explicitClose:null}});})(jQuery);
function Pw_RulesCheck(c,f,a,e,b){var d="";if(f>0&&c.length<f){d+="- "+sprintf(mydbr_loc.MYDBR_APASSWORD_CHARSLONG,f)+"\n"}if(a=="1"&&!c.match(/[a-zA-Z_]/)){d+="- "+mydbr_loc.MYDBR_APASSWORD_ONELETTER+"\n"}if(e=="1"&&!c.match(/[0-9]/)){d+="- "+mydbr_loc.MYDBR_APASSWORD_ONENUMBER+"\n"}if(b=="1"&&!c.match(/\W+/)){d+="- "+mydbr_loc.MYDBR_APASSWORD_SPECIAL+"\n"}if(d!=""){alert(mydbr_loc.MYDBR_APASSWORD_MUSTBE+"\n"+d);return false}else{return true}};
//jQuery.org v1.11.0
!function(a,b){"object"==typeof module&&"object"==typeof module.exports?module.exports=a.document?b(a,!0):function(a){if(!a.document)throw new Error("jQuery requires a window with a document");return b(a)}:b(a)}("undefined"!=typeof window?window:this,function(a,b){var c=[],d=c.slice,e=c.concat,f=c.push,g=c.indexOf,h={},i=h.toString,j=h.hasOwnProperty,k="".trim,l={},m="1.11.0",n=function(a,b){return new n.fn.init(a,b)},o=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g,p=/^-ms-/,q=/-([\da-z])/gi,r=function(a,b){return b.toUpperCase()};n.fn=n.prototype={jquery:m,constructor:n,selector:"",length:0,toArray:function(){return d.call(this)},get:function(a){return null!=a?0>a?this[a+this.length]:this[a]:d.call(this)},pushStack:function(a){var b=n.merge(this.constructor(),a);return b.prevObject=this,b.context=this.context,b},each:function(a,b){return n.each(this,a,b)},map:function(a){return this.pushStack(n.map(this,function(b,c){return a.call(b,c,b)}))},slice:function(){return this.pushStack(d.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},eq:function(a){var b=this.length,c=+a+(0>a?b:0);return this.pushStack(c>=0&&b>c?[this[c]]:[])},end:function(){return this.prevObject||this.constructor(null)},push:f,sort:c.sort,splice:c.splice},n.extend=n.fn.extend=function(){var a,b,c,d,e,f,g=arguments[0]||{},h=1,i=arguments.length,j=!1;for("boolean"==typeof g&&(j=g,g=arguments[h]||{},h++),"object"==typeof g||n.isFunction(g)||(g={}),h===i&&(g=this,h--);i>h;h++)if(null!=(e=arguments[h]))for(d in e)a=g[d],c=e[d],g!==c&&(j&&c&&(n.isPlainObject(c)||(b=n.isArray(c)))?(b?(b=!1,f=a&&n.isArray(a)?a:[]):f=a&&n.isPlainObject(a)?a:{},g[d]=n.extend(j,f,c)):void 0!==c&&(g[d]=c));return g},n.extend({expando:"jQuery"+(m+Math.random()).replace(/\D/g,""),isReady:!0,error:function(a){throw new Error(a)},noop:function(){},isFunction:function(a){return"function"===n.type(a)},isArray:Array.isArray||function(a){return"array"===n.type(a)},isWindow:function(a){return null!=a&&a==a.window},isNumeric:function(a){return a-parseFloat(a)>=0},isEmptyObject:function(a){var b;for(b in a)return!1;return!0},isPlainObject:function(a){var b;if(!a||"object"!==n.type(a)||a.nodeType||n.isWindow(a))return!1;try{if(a.constructor&&!j.call(a,"constructor")&&!j.call(a.constructor.prototype,"isPrototypeOf"))return!1}catch(c){return!1}if(l.ownLast)for(b in a)return j.call(a,b);for(b in a);return void 0===b||j.call(a,b)},type:function(a){return null==a?a+"":"object"==typeof a||"function"==typeof a?h[i.call(a)]||"object":typeof a},globalEval:function(b){b&&n.trim(b)&&(a.execScript||function(b){a.eval.call(a,b)})(b)},camelCase:function(a){return a.replace(p,"ms-").replace(q,r)},nodeName:function(a,b){return a.nodeName&&a.nodeName.toLowerCase()===b.toLowerCase()},each:function(a,b,c){var d,e=0,f=a.length,g=s(a);if(c){if(g){for(;f>e;e++)if(d=b.apply(a[e],c),d===!1)break}else for(e in a)if(d=b.apply(a[e],c),d===!1)break}else if(g){for(;f>e;e++)if(d=b.call(a[e],e,a[e]),d===!1)break}else for(e in a)if(d=b.call(a[e],e,a[e]),d===!1)break;return a},trim:k&&!k.call("\ufeff\xa0")?function(a){return null==a?"":k.call(a)}:function(a){return null==a?"":(a+"").replace(o,"")},makeArray:function(a,b){var c=b||[];return null!=a&&(s(Object(a))?n.merge(c,"string"==typeof a?[a]:a):f.call(c,a)),c},inArray:function(a,b,c){var d;if(b){if(g)return g.call(b,a,c);for(d=b.length,c=c?0>c?Math.max(0,d+c):c:0;d>c;c++)if(c in b&&b[c]===a)return c}return-1},merge:function(a,b){var c=+b.length,d=0,e=a.length;while(c>d)a[e++]=b[d++];if(c!==c)while(void 0!==b[d])a[e++]=b[d++];return a.length=e,a},grep:function(a,b,c){for(var d,e=[],f=0,g=a.length,h=!c;g>f;f++)d=!b(a[f],f),d!==h&&e.push(a[f]);return e},map:function(a,b,c){var d,f=0,g=a.length,h=s(a),i=[];if(h)for(;g>f;f++)d=b(a[f],f,c),null!=d&&i.push(d);else for(f in a)d=b(a[f],f,c),null!=d&&i.push(d);return e.apply([],i)},guid:1,proxy:function(a,b){var c,e,f;return"string"==typeof b&&(f=a[b],b=a,a=f),n.isFunction(a)?(c=d.call(arguments,2),e=function(){return a.apply(b||this,c.concat(d.call(arguments)))},e.guid=a.guid=a.guid||n.guid++,e):void 0},now:function(){return+new Date},support:l}),n.each("Boolean Number String Function Array Date RegExp Object Error".split(" "),function(a,b){h["[object "+b+"]"]=b.toLowerCase()});function s(a){var b=a.length,c=n.type(a);return"function"===c||n.isWindow(a)?!1:1===a.nodeType&&b?!0:"array"===c||0===b||"number"==typeof b&&b>0&&b-1 in a}var t=function(a){var b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s="sizzle"+-new Date,t=a.document,u=0,v=0,w=eb(),x=eb(),y=eb(),z=function(a,b){return a===b&&(j=!0),0},A="undefined",B=1<<31,C={}.hasOwnProperty,D=[],E=D.pop,F=D.push,G=D.push,H=D.slice,I=D.indexOf||function(a){for(var b=0,c=this.length;c>b;b++)if(this[b]===a)return b;return-1},J="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",K="[\\x20\\t\\r\\n\\f]",L="(?:\\\\.|[\\w-]|[^\\x00-\\xa0])+",M=L.replace("w","w#"),N="\\["+K+"*("+L+")"+K+"*(?:([*^$|!~]?=)"+K+"*(?:(['\"])((?:\\\\.|[^\\\\])*?)\\3|("+M+")|)|)"+K+"*\\]",O=":("+L+")(?:\\(((['\"])((?:\\\\.|[^\\\\])*?)\\3|((?:\\\\.|[^\\\\()[\\]]|"+N.replace(3,8)+")*)|.*)\\)|)",P=new RegExp("^"+K+"+|((?:^|[^\\\\])(?:\\\\.)*)"+K+"+$","g"),Q=new RegExp("^"+K+"*,"+K+"*"),R=new RegExp("^"+K+"*([>+~]|"+K+")"+K+"*"),S=new RegExp("="+K+"*([^\\]'\"]*?)"+K+"*\\]","g"),T=new RegExp(O),U=new RegExp("^"+M+"$"),V={ID:new RegExp("^#("+L+")"),CLASS:new RegExp("^\\.("+L+")"),TAG:new RegExp("^("+L.replace("w","w*")+")"),ATTR:new RegExp("^"+N),PSEUDO:new RegExp("^"+O),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+K+"*(even|odd|(([+-]|)(\\d*)n|)"+K+"*(?:([+-]|)"+K+"*(\\d+)|))"+K+"*\\)|)","i"),bool:new RegExp("^(?:"+J+")$","i"),needsContext:new RegExp("^"+K+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+K+"*((?:-\\d)?\\d*)"+K+"*\\)|)(?=[^-]|$)","i")},W=/^(?:input|select|textarea|button)$/i,X=/^h\d$/i,Y=/^[^{]+\{\s*\[native \w/,Z=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,$=/[+~]/,_=/'|\\/g,ab=new RegExp("\\\\([\\da-f]{1,6}"+K+"?|("+K+")|.)","ig"),bb=function(a,b,c){var d="0x"+b-65536;return d!==d||c?b:0>d?String.fromCharCode(d+65536):String.fromCharCode(d>>10|55296,1023&d|56320)};try{G.apply(D=H.call(t.childNodes),t.childNodes),D[t.childNodes.length].nodeType}catch(cb){G={apply:D.length?function(a,b){F.apply(a,H.call(b))}:function(a,b){var c=a.length,d=0;while(a[c++]=b[d++]);a.length=c-1}}}function db(a,b,d,e){var f,g,h,i,j,m,p,q,u,v;if((b?b.ownerDocument||b:t)!==l&&k(b),b=b||l,d=d||[],!a||"string"!=typeof a)return d;if(1!==(i=b.nodeType)&&9!==i)return[];if(n&&!e){if(f=Z.exec(a))if(h=f[1]){if(9===i){if(g=b.getElementById(h),!g||!g.parentNode)return d;if(g.id===h)return d.push(g),d}else if(b.ownerDocument&&(g=b.ownerDocument.getElementById(h))&&r(b,g)&&g.id===h)return d.push(g),d}else{if(f[2])return G.apply(d,b.getElementsByTagName(a)),d;if((h=f[3])&&c.getElementsByClassName&&b.getElementsByClassName)return G.apply(d,b.getElementsByClassName(h)),d}if(c.qsa&&(!o||!o.test(a))){if(q=p=s,u=b,v=9===i&&a,1===i&&"object"!==b.nodeName.toLowerCase()){m=ob(a),(p=b.getAttribute("id"))?q=p.replace(_,"\\$&"):b.setAttribute("id",q),q="[id='"+q+"'] ",j=m.length;while(j--)m[j]=q+pb(m[j]);u=$.test(a)&&mb(b.parentNode)||b,v=m.join(",")}if(v)try{return G.apply(d,u.querySelectorAll(v)),d}catch(w){}finally{p||b.removeAttribute("id")}}}return xb(a.replace(P,"$1"),b,d,e)}function eb(){var a=[];function b(c,e){return a.push(c+" ")>d.cacheLength&&delete b[a.shift()],b[c+" "]=e}return b}function fb(a){return a[s]=!0,a}function gb(a){var b=l.createElement("div");try{return!!a(b)}catch(c){return!1}finally{b.parentNode&&b.parentNode.removeChild(b),b=null}}function hb(a,b){var c=a.split("|"),e=a.length;while(e--)d.attrHandle[c[e]]=b}function ib(a,b){var c=b&&a,d=c&&1===a.nodeType&&1===b.nodeType&&(~b.sourceIndex||B)-(~a.sourceIndex||B);if(d)return d;if(c)while(c=c.nextSibling)if(c===b)return-1;return a?1:-1}function jb(a){return function(b){var c=b.nodeName.toLowerCase();return"input"===c&&b.type===a}}function kb(a){return function(b){var c=b.nodeName.toLowerCase();return("input"===c||"button"===c)&&b.type===a}}function lb(a){return fb(function(b){return b=+b,fb(function(c,d){var e,f=a([],c.length,b),g=f.length;while(g--)c[e=f[g]]&&(c[e]=!(d[e]=c[e]))})})}function mb(a){return a&&typeof a.getElementsByTagName!==A&&a}c=db.support={},f=db.isXML=function(a){var b=a&&(a.ownerDocument||a).documentElement;return b?"HTML"!==b.nodeName:!1},k=db.setDocument=function(a){var b,e=a?a.ownerDocument||a:t,g=e.defaultView;return e!==l&&9===e.nodeType&&e.documentElement?(l=e,m=e.documentElement,n=!f(e),g&&g!==g.top&&(g.addEventListener?g.addEventListener("unload",function(){k()},!1):g.attachEvent&&g.attachEvent("onunload",function(){k()})),c.attributes=gb(function(a){return a.className="i",!a.getAttribute("className")}),c.getElementsByTagName=gb(function(a){return a.appendChild(e.createComment("")),!a.getElementsByTagName("*").length}),c.getElementsByClassName=Y.test(e.getElementsByClassName)&&gb(function(a){return a.innerHTML="<div class='a'></div><div class='a i'></div>",a.firstChild.className="i",2===a.getElementsByClassName("i").length}),c.getById=gb(function(a){return m.appendChild(a).id=s,!e.getElementsByName||!e.getElementsByName(s).length}),c.getById?(d.find.ID=function(a,b){if(typeof b.getElementById!==A&&n){var c=b.getElementById(a);return c&&c.parentNode?[c]:[]}},d.filter.ID=function(a){var b=a.replace(ab,bb);return function(a){return a.getAttribute("id")===b}}):(delete d.find.ID,d.filter.ID=function(a){var b=a.replace(ab,bb);return function(a){var c=typeof a.getAttributeNode!==A&&a.getAttributeNode("id");return c&&c.value===b}}),d.find.TAG=c.getElementsByTagName?function(a,b){return typeof b.getElementsByTagName!==A?b.getElementsByTagName(a):void 0}:function(a,b){var c,d=[],e=0,f=b.getElementsByTagName(a);if("*"===a){while(c=f[e++])1===c.nodeType&&d.push(c);return d}return f},d.find.CLASS=c.getElementsByClassName&&function(a,b){return typeof b.getElementsByClassName!==A&&n?b.getElementsByClassName(a):void 0},p=[],o=[],(c.qsa=Y.test(e.querySelectorAll))&&(gb(function(a){a.innerHTML="<select t=''><option selected=''></option></select>",a.querySelectorAll("[t^='']").length&&o.push("[*^$]="+K+"*(?:''|\"\")"),a.querySelectorAll("[selected]").length||o.push("\\["+K+"*(?:value|"+J+")"),a.querySelectorAll(":checked").length||o.push(":checked")}),gb(function(a){var b=e.createElement("input");b.setAttribute("type","hidden"),a.appendChild(b).setAttribute("name","D"),a.querySelectorAll("[name=d]").length&&o.push("name"+K+"*[*^$|!~]?="),a.querySelectorAll(":enabled").length||o.push(":enabled",":disabled"),a.querySelectorAll("*,:x"),o.push(",.*:")})),(c.matchesSelector=Y.test(q=m.webkitMatchesSelector||m.mozMatchesSelector||m.oMatchesSelector||m.msMatchesSelector))&&gb(function(a){c.disconnectedMatch=q.call(a,"div"),q.call(a,"[s!='']:x"),p.push("!=",O)}),o=o.length&&new RegExp(o.join("|")),p=p.length&&new RegExp(p.join("|")),b=Y.test(m.compareDocumentPosition),r=b||Y.test(m.contains)?function(a,b){var c=9===a.nodeType?a.documentElement:a,d=b&&b.parentNode;return a===d||!(!d||1!==d.nodeType||!(c.contains?c.contains(d):a.compareDocumentPosition&&16&a.compareDocumentPosition(d)))}:function(a,b){if(b)while(b=b.parentNode)if(b===a)return!0;return!1},z=b?function(a,b){if(a===b)return j=!0,0;var d=!a.compareDocumentPosition-!b.compareDocumentPosition;return d?d:(d=(a.ownerDocument||a)===(b.ownerDocument||b)?a.compareDocumentPosition(b):1,1&d||!c.sortDetached&&b.compareDocumentPosition(a)===d?a===e||a.ownerDocument===t&&r(t,a)?-1:b===e||b.ownerDocument===t&&r(t,b)?1:i?I.call(i,a)-I.call(i,b):0:4&d?-1:1)}:function(a,b){if(a===b)return j=!0,0;var c,d=0,f=a.parentNode,g=b.parentNode,h=[a],k=[b];if(!f||!g)return a===e?-1:b===e?1:f?-1:g?1:i?I.call(i,a)-I.call(i,b):0;if(f===g)return ib(a,b);c=a;while(c=c.parentNode)h.unshift(c);c=b;while(c=c.parentNode)k.unshift(c);while(h[d]===k[d])d++;return d?ib(h[d],k[d]):h[d]===t?-1:k[d]===t?1:0},e):l},db.matches=function(a,b){return db(a,null,null,b)},db.matchesSelector=function(a,b){if((a.ownerDocument||a)!==l&&k(a),b=b.replace(S,"='$1']"),!(!c.matchesSelector||!n||p&&p.test(b)||o&&o.test(b)))try{var d=q.call(a,b);if(d||c.disconnectedMatch||a.document&&11!==a.document.nodeType)return d}catch(e){}return db(b,l,null,[a]).length>0},db.contains=function(a,b){return(a.ownerDocument||a)!==l&&k(a),r(a,b)},db.attr=function(a,b){(a.ownerDocument||a)!==l&&k(a);var e=d.attrHandle[b.toLowerCase()],f=e&&C.call(d.attrHandle,b.toLowerCase())?e(a,b,!n):void 0;return void 0!==f?f:c.attributes||!n?a.getAttribute(b):(f=a.getAttributeNode(b))&&f.specified?f.value:null},db.error=function(a){throw new Error("Syntax error, unrecognized expression: "+a)},db.uniqueSort=function(a){var b,d=[],e=0,f=0;if(j=!c.detectDuplicates,i=!c.sortStable&&a.slice(0),a.sort(z),j){while(b=a[f++])b===a[f]&&(e=d.push(f));while(e--)a.splice(d[e],1)}return i=null,a},e=db.getText=function(a){var b,c="",d=0,f=a.nodeType;if(f){if(1===f||9===f||11===f){if("string"==typeof a.textContent)return a.textContent;for(a=a.firstChild;a;a=a.nextSibling)c+=e(a)}else if(3===f||4===f)return a.nodeValue}else while(b=a[d++])c+=e(b);return c},d=db.selectors={cacheLength:50,createPseudo:fb,match:V,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(a){return a[1]=a[1].replace(ab,bb),a[3]=(a[4]||a[5]||"").replace(ab,bb),"~="===a[2]&&(a[3]=" "+a[3]+" "),a.slice(0,4)},CHILD:function(a){return a[1]=a[1].toLowerCase(),"nth"===a[1].slice(0,3)?(a[3]||db.error(a[0]),a[4]=+(a[4]?a[5]+(a[6]||1):2*("even"===a[3]||"odd"===a[3])),a[5]=+(a[7]+a[8]||"odd"===a[3])):a[3]&&db.error(a[0]),a},PSEUDO:function(a){var b,c=!a[5]&&a[2];return V.CHILD.test(a[0])?null:(a[3]&&void 0!==a[4]?a[2]=a[4]:c&&T.test(c)&&(b=ob(c,!0))&&(b=c.indexOf(")",c.length-b)-c.length)&&(a[0]=a[0].slice(0,b),a[2]=c.slice(0,b)),a.slice(0,3))}},filter:{TAG:function(a){var b=a.replace(ab,bb).toLowerCase();return"*"===a?function(){return!0}:function(a){return a.nodeName&&a.nodeName.toLowerCase()===b}},CLASS:function(a){var b=w[a+" "];return b||(b=new RegExp("(^|"+K+")"+a+"("+K+"|$)"))&&w(a,function(a){return b.test("string"==typeof a.className&&a.className||typeof a.getAttribute!==A&&a.getAttribute("class")||"")})},ATTR:function(a,b,c){return function(d){var e=db.attr(d,a);return null==e?"!="===b:b?(e+="","="===b?e===c:"!="===b?e!==c:"^="===b?c&&0===e.indexOf(c):"*="===b?c&&e.indexOf(c)>-1:"$="===b?c&&e.slice(-c.length)===c:"~="===b?(" "+e+" ").indexOf(c)>-1:"|="===b?e===c||e.slice(0,c.length+1)===c+"-":!1):!0}},CHILD:function(a,b,c,d,e){var f="nth"!==a.slice(0,3),g="last"!==a.slice(-4),h="of-type"===b;return 1===d&&0===e?function(a){return!!a.parentNode}:function(b,c,i){var j,k,l,m,n,o,p=f!==g?"nextSibling":"previousSibling",q=b.parentNode,r=h&&b.nodeName.toLowerCase(),t=!i&&!h;if(q){if(f){while(p){l=b;while(l=l[p])if(h?l.nodeName.toLowerCase()===r:1===l.nodeType)return!1;o=p="only"===a&&!o&&"nextSibling"}return!0}if(o=[g?q.firstChild:q.lastChild],g&&t){k=q[s]||(q[s]={}),j=k[a]||[],n=j[0]===u&&j[1],m=j[0]===u&&j[2],l=n&&q.childNodes[n];while(l=++n&&l&&l[p]||(m=n=0)||o.pop())if(1===l.nodeType&&++m&&l===b){k[a]=[u,n,m];break}}else if(t&&(j=(b[s]||(b[s]={}))[a])&&j[0]===u)m=j[1];else while(l=++n&&l&&l[p]||(m=n=0)||o.pop())if((h?l.nodeName.toLowerCase()===r:1===l.nodeType)&&++m&&(t&&((l[s]||(l[s]={}))[a]=[u,m]),l===b))break;return m-=e,m===d||m%d===0&&m/d>=0}}},PSEUDO:function(a,b){var c,e=d.pseudos[a]||d.setFilters[a.toLowerCase()]||db.error("unsupported pseudo: "+a);return e[s]?e(b):e.length>1?(c=[a,a,"",b],d.setFilters.hasOwnProperty(a.toLowerCase())?fb(function(a,c){var d,f=e(a,b),g=f.length;while(g--)d=I.call(a,f[g]),a[d]=!(c[d]=f[g])}):function(a){return e(a,0,c)}):e}},pseudos:{not:fb(function(a){var b=[],c=[],d=g(a.replace(P,"$1"));return d[s]?fb(function(a,b,c,e){var f,g=d(a,null,e,[]),h=a.length;while(h--)(f=g[h])&&(a[h]=!(b[h]=f))}):function(a,e,f){return b[0]=a,d(b,null,f,c),!c.pop()}}),has:fb(function(a){return function(b){return db(a,b).length>0}}),contains:fb(function(a){return function(b){return(b.textContent||b.innerText||e(b)).indexOf(a)>-1}}),lang:fb(function(a){return U.test(a||"")||db.error("unsupported lang: "+a),a=a.replace(ab,bb).toLowerCase(),function(b){var c;do if(c=n?b.lang:b.getAttribute("xml:lang")||b.getAttribute("lang"))return c=c.toLowerCase(),c===a||0===c.indexOf(a+"-");while((b=b.parentNode)&&1===b.nodeType);return!1}}),target:function(b){var c=a.location&&a.location.hash;return c&&c.slice(1)===b.id},root:function(a){return a===m},focus:function(a){return a===l.activeElement&&(!l.hasFocus||l.hasFocus())&&!!(a.type||a.href||~a.tabIndex)},enabled:function(a){return a.disabled===!1},disabled:function(a){return a.disabled===!0},checked:function(a){var b=a.nodeName.toLowerCase();return"input"===b&&!!a.checked||"option"===b&&!!a.selected},selected:function(a){return a.parentNode&&a.parentNode.selectedIndex,a.selected===!0},empty:function(a){for(a=a.firstChild;a;a=a.nextSibling)if(a.nodeType<6)return!1;return!0},parent:function(a){return!d.pseudos.empty(a)},header:function(a){return X.test(a.nodeName)},input:function(a){return W.test(a.nodeName)},button:function(a){var b=a.nodeName.toLowerCase();return"input"===b&&"button"===a.type||"button"===b},text:function(a){var b;return"input"===a.nodeName.toLowerCase()&&"text"===a.type&&(null==(b=a.getAttribute("type"))||"text"===b.toLowerCase())},first:lb(function(){return[0]}),last:lb(function(a,b){return[b-1]}),eq:lb(function(a,b,c){return[0>c?c+b:c]}),even:lb(function(a,b){for(var c=0;b>c;c+=2)a.push(c);return a}),odd:lb(function(a,b){for(var c=1;b>c;c+=2)a.push(c);return a}),lt:lb(function(a,b,c){for(var d=0>c?c+b:c;--d>=0;)a.push(d);return a}),gt:lb(function(a,b,c){for(var d=0>c?c+b:c;++d<b;)a.push(d);return a})}},d.pseudos.nth=d.pseudos.eq;for(b in{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})d.pseudos[b]=jb(b);for(b in{submit:!0,reset:!0})d.pseudos[b]=kb(b);function nb(){}nb.prototype=d.filters=d.pseudos,d.setFilters=new nb;function ob(a,b){var c,e,f,g,h,i,j,k=x[a+" "];if(k)return b?0:k.slice(0);h=a,i=[],j=d.preFilter;while(h){(!c||(e=Q.exec(h)))&&(e&&(h=h.slice(e[0].length)||h),i.push(f=[])),c=!1,(e=R.exec(h))&&(c=e.shift(),f.push({value:c,type:e[0].replace(P," ")}),h=h.slice(c.length));for(g in d.filter)!(e=V[g].exec(h))||j[g]&&!(e=j[g](e))||(c=e.shift(),f.push({value:c,type:g,matches:e}),h=h.slice(c.length));if(!c)break}return b?h.length:h?db.error(a):x(a,i).slice(0)}function pb(a){for(var b=0,c=a.length,d="";c>b;b++)d+=a[b].value;return d}function qb(a,b,c){var d=b.dir,e=c&&"parentNode"===d,f=v++;return b.first?function(b,c,f){while(b=b[d])if(1===b.nodeType||e)return a(b,c,f)}:function(b,c,g){var h,i,j=[u,f];if(g){while(b=b[d])if((1===b.nodeType||e)&&a(b,c,g))return!0}else while(b=b[d])if(1===b.nodeType||e){if(i=b[s]||(b[s]={}),(h=i[d])&&h[0]===u&&h[1]===f)return j[2]=h[2];if(i[d]=j,j[2]=a(b,c,g))return!0}}}function rb(a){return a.length>1?function(b,c,d){var e=a.length;while(e--)if(!a[e](b,c,d))return!1;return!0}:a[0]}function sb(a,b,c,d,e){for(var f,g=[],h=0,i=a.length,j=null!=b;i>h;h++)(f=a[h])&&(!c||c(f,d,e))&&(g.push(f),j&&b.push(h));return g}function tb(a,b,c,d,e,f){return d&&!d[s]&&(d=tb(d)),e&&!e[s]&&(e=tb(e,f)),fb(function(f,g,h,i){var j,k,l,m=[],n=[],o=g.length,p=f||wb(b||"*",h.nodeType?[h]:h,[]),q=!a||!f&&b?p:sb(p,m,a,h,i),r=c?e||(f?a:o||d)?[]:g:q;if(c&&c(q,r,h,i),d){j=sb(r,n),d(j,[],h,i),k=j.length;while(k--)(l=j[k])&&(r[n[k]]=!(q[n[k]]=l))}if(f){if(e||a){if(e){j=[],k=r.length;while(k--)(l=r[k])&&j.push(q[k]=l);e(null,r=[],j,i)}k=r.length;while(k--)(l=r[k])&&(j=e?I.call(f,l):m[k])>-1&&(f[j]=!(g[j]=l))}}else r=sb(r===g?r.splice(o,r.length):r),e?e(null,g,r,i):G.apply(g,r)})}function ub(a){for(var b,c,e,f=a.length,g=d.relative[a[0].type],i=g||d.relative[" "],j=g?1:0,k=qb(function(a){return a===b},i,!0),l=qb(function(a){return I.call(b,a)>-1},i,!0),m=[function(a,c,d){return!g&&(d||c!==h)||((b=c).nodeType?k(a,c,d):l(a,c,d))}];f>j;j++)if(c=d.relative[a[j].type])m=[qb(rb(m),c)];else{if(c=d.filter[a[j].type].apply(null,a[j].matches),c[s]){for(e=++j;f>e;e++)if(d.relative[a[e].type])break;return tb(j>1&&rb(m),j>1&&pb(a.slice(0,j-1).concat({value:" "===a[j-2].type?"*":""})).replace(P,"$1"),c,e>j&&ub(a.slice(j,e)),f>e&&ub(a=a.slice(e)),f>e&&pb(a))}m.push(c)}return rb(m)}function vb(a,b){var c=b.length>0,e=a.length>0,f=function(f,g,i,j,k){var m,n,o,p=0,q="0",r=f&&[],s=[],t=h,v=f||e&&d.find.TAG("*",k),w=u+=null==t?1:Math.random()||.1,x=v.length;for(k&&(h=g!==l&&g);q!==x&&null!=(m=v[q]);q++){if(e&&m){n=0;while(o=a[n++])if(o(m,g,i)){j.push(m);break}k&&(u=w)}c&&((m=!o&&m)&&p--,f&&r.push(m))}if(p+=q,c&&q!==p){n=0;while(o=b[n++])o(r,s,g,i);if(f){if(p>0)while(q--)r[q]||s[q]||(s[q]=E.call(j));s=sb(s)}G.apply(j,s),k&&!f&&s.length>0&&p+b.length>1&&db.uniqueSort(j)}return k&&(u=w,h=t),r};return c?fb(f):f}g=db.compile=function(a,b){var c,d=[],e=[],f=y[a+" "];if(!f){b||(b=ob(a)),c=b.length;while(c--)f=ub(b[c]),f[s]?d.push(f):e.push(f);f=y(a,vb(e,d))}return f};function wb(a,b,c){for(var d=0,e=b.length;e>d;d++)db(a,b[d],c);return c}function xb(a,b,e,f){var h,i,j,k,l,m=ob(a);if(!f&&1===m.length){if(i=m[0]=m[0].slice(0),i.length>2&&"ID"===(j=i[0]).type&&c.getById&&9===b.nodeType&&n&&d.relative[i[1].type]){if(b=(d.find.ID(j.matches[0].replace(ab,bb),b)||[])[0],!b)return e;a=a.slice(i.shift().value.length)}h=V.needsContext.test(a)?0:i.length;while(h--){if(j=i[h],d.relative[k=j.type])break;if((l=d.find[k])&&(f=l(j.matches[0].replace(ab,bb),$.test(i[0].type)&&mb(b.parentNode)||b))){if(i.splice(h,1),a=f.length&&pb(i),!a)return G.apply(e,f),e;break}}}return g(a,m)(f,b,!n,e,$.test(a)&&mb(b.parentNode)||b),e}return c.sortStable=s.split("").sort(z).join("")===s,c.detectDuplicates=!!j,k(),c.sortDetached=gb(function(a){return 1&a.compareDocumentPosition(l.createElement("div"))}),gb(function(a){return a.innerHTML="<a href='#'></a>","#"===a.firstChild.getAttribute("href")})||hb("type|href|height|width",function(a,b,c){return c?void 0:a.getAttribute(b,"type"===b.toLowerCase()?1:2)}),c.attributes&&gb(function(a){return a.innerHTML="<input/>",a.firstChild.setAttribute("value",""),""===a.firstChild.getAttribute("value")})||hb("value",function(a,b,c){return c||"input"!==a.nodeName.toLowerCase()?void 0:a.defaultValue}),gb(function(a){return null==a.getAttribute("disabled")})||hb(J,function(a,b,c){var d;return c?void 0:a[b]===!0?b.toLowerCase():(d=a.getAttributeNode(b))&&d.specified?d.value:null}),db}(a);n.find=t,n.expr=t.selectors,n.expr[":"]=n.expr.pseudos,n.unique=t.uniqueSort,n.text=t.getText,n.isXMLDoc=t.isXML,n.contains=t.contains;var u=n.expr.match.needsContext,v=/^<(\w+)\s*\/?>(?:<\/\1>|)$/,w=/^.[^:#\[\.,]*$/;function x(a,b,c){if(n.isFunction(b))return n.grep(a,function(a,d){return!!b.call(a,d,a)!==c});if(b.nodeType)return n.grep(a,function(a){return a===b!==c});if("string"==typeof b){if(w.test(b))return n.filter(b,a,c);b=n.filter(b,a)}return n.grep(a,function(a){return n.inArray(a,b)>=0!==c})}n.filter=function(a,b,c){var d=b[0];return c&&(a=":not("+a+")"),1===b.length&&1===d.nodeType?n.find.matchesSelector(d,a)?[d]:[]:n.find.matches(a,n.grep(b,function(a){return 1===a.nodeType}))},n.fn.extend({find:function(a){var b,c=[],d=this,e=d.length;if("string"!=typeof a)return this.pushStack(n(a).filter(function(){for(b=0;e>b;b++)if(n.contains(d[b],this))return!0}));for(b=0;e>b;b++)n.find(a,d[b],c);return c=this.pushStack(e>1?n.unique(c):c),c.selector=this.selector?this.selector+" "+a:a,c},filter:function(a){return this.pushStack(x(this,a||[],!1))},not:function(a){return this.pushStack(x(this,a||[],!0))},is:function(a){return!!x(this,"string"==typeof a&&u.test(a)?n(a):a||[],!1).length}});var y,z=a.document,A=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]*))$/,B=n.fn.init=function(a,b){var c,d;if(!a)return this;if("string"==typeof a){if(c="<"===a.charAt(0)&&">"===a.charAt(a.length-1)&&a.length>=3?[null,a,null]:A.exec(a),!c||!c[1]&&b)return!b||b.jquery?(b||y).find(a):this.constructor(b).find(a);if(c[1]){if(b=b instanceof n?b[0]:b,n.merge(this,n.parseHTML(c[1],b&&b.nodeType?b.ownerDocument||b:z,!0)),v.test(c[1])&&n.isPlainObject(b))for(c in b)n.isFunction(this[c])?this[c](b[c]):this.attr(c,b[c]);return this}if(d=z.getElementById(c[2]),d&&d.parentNode){if(d.id!==c[2])return y.find(a);this.length=1,this[0]=d}return this.context=z,this.selector=a,this}return a.nodeType?(this.context=this[0]=a,this.length=1,this):n.isFunction(a)?"undefined"!=typeof y.ready?y.ready(a):a(n):(void 0!==a.selector&&(this.selector=a.selector,this.context=a.context),n.makeArray(a,this))};B.prototype=n.fn,y=n(z);var C=/^(?:parents|prev(?:Until|All))/,D={children:!0,contents:!0,next:!0,prev:!0};n.extend({dir:function(a,b,c){var d=[],e=a[b];while(e&&9!==e.nodeType&&(void 0===c||1!==e.nodeType||!n(e).is(c)))1===e.nodeType&&d.push(e),e=e[b];return d},sibling:function(a,b){for(var c=[];a;a=a.nextSibling)1===a.nodeType&&a!==b&&c.push(a);return c}}),n.fn.extend({has:function(a){var b,c=n(a,this),d=c.length;return this.filter(function(){for(b=0;d>b;b++)if(n.contains(this,c[b]))return!0})},closest:function(a,b){for(var c,d=0,e=this.length,f=[],g=u.test(a)||"string"!=typeof a?n(a,b||this.context):0;e>d;d++)for(c=this[d];c&&c!==b;c=c.parentNode)if(c.nodeType<11&&(g?g.index(c)>-1:1===c.nodeType&&n.find.matchesSelector(c,a))){f.push(c);break}return this.pushStack(f.length>1?n.unique(f):f)},index:function(a){return a?"string"==typeof a?n.inArray(this[0],n(a)):n.inArray(a.jquery?a[0]:a,this):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(a,b){return this.pushStack(n.unique(n.merge(this.get(),n(a,b))))},addBack:function(a){return this.add(null==a?this.prevObject:this.prevObject.filter(a))}});function E(a,b){do a=a[b];while(a&&1!==a.nodeType);return a}n.each({parent:function(a){var b=a.parentNode;return b&&11!==b.nodeType?b:null},parents:function(a){return n.dir(a,"parentNode")},parentsUntil:function(a,b,c){return n.dir(a,"parentNode",c)},next:function(a){return E(a,"nextSibling")},prev:function(a){return E(a,"previousSibling")},nextAll:function(a){return n.dir(a,"nextSibling")},prevAll:function(a){return n.dir(a,"previousSibling")},nextUntil:function(a,b,c){return n.dir(a,"nextSibling",c)},prevUntil:function(a,b,c){return n.dir(a,"previousSibling",c)},siblings:function(a){return n.sibling((a.parentNode||{}).firstChild,a)},children:function(a){return n.sibling(a.firstChild)},contents:function(a){return n.nodeName(a,"iframe")?a.contentDocument||a.contentWindow.document:n.merge([],a.childNodes)}},function(a,b){n.fn[a]=function(c,d){var e=n.map(this,b,c);return"Until"!==a.slice(-5)&&(d=c),d&&"string"==typeof d&&(e=n.filter(d,e)),this.length>1&&(D[a]||(e=n.unique(e)),C.test(a)&&(e=e.reverse())),this.pushStack(e)}});var F=/\S+/g,G={};function H(a){var b=G[a]={};return n.each(a.match(F)||[],function(a,c){b[c]=!0}),b}n.Callbacks=function(a){a="string"==typeof a?G[a]||H(a):n.extend({},a);var b,c,d,e,f,g,h=[],i=!a.once&&[],j=function(l){for(c=a.memory&&l,d=!0,f=g||0,g=0,e=h.length,b=!0;h&&e>f;f++)if(h[f].apply(l[0],l[1])===!1&&a.stopOnFalse){c=!1;break}b=!1,h&&(i?i.length&&j(i.shift()):c?h=[]:k.disable())},k={add:function(){if(h){var d=h.length;!function f(b){n.each(b,function(b,c){var d=n.type(c);"function"===d?a.unique&&k.has(c)||h.push(c):c&&c.length&&"string"!==d&&f(c)})}(arguments),b?e=h.length:c&&(g=d,j(c))}return this},remove:function(){return h&&n.each(arguments,function(a,c){var d;while((d=n.inArray(c,h,d))>-1)h.splice(d,1),b&&(e>=d&&e--,f>=d&&f--)}),this},has:function(a){return a?n.inArray(a,h)>-1:!(!h||!h.length)},empty:function(){return h=[],e=0,this},disable:function(){return h=i=c=void 0,this},disabled:function(){return!h},lock:function(){return i=void 0,c||k.disable(),this},locked:function(){return!i},fireWith:function(a,c){return!h||d&&!i||(c=c||[],c=[a,c.slice?c.slice():c],b?i.push(c):j(c)),this},fire:function(){return k.fireWith(this,arguments),this},fired:function(){return!!d}};return k},n.extend({Deferred:function(a){var b=[["resolve","done",n.Callbacks("once memory"),"resolved"],["reject","fail",n.Callbacks("once memory"),"rejected"],["notify","progress",n.Callbacks("memory")]],c="pending",d={state:function(){return c},always:function(){return e.done(arguments).fail(arguments),this},then:function(){var a=arguments;return n.Deferred(function(c){n.each(b,function(b,f){var g=n.isFunction(a[b])&&a[b];e[f[1]](function(){var a=g&&g.apply(this,arguments);a&&n.isFunction(a.promise)?a.promise().done(c.resolve).fail(c.reject).progress(c.notify):c[f[0]+"With"](this===d?c.promise():this,g?[a]:arguments)})}),a=null}).promise()},promise:function(a){return null!=a?n.extend(a,d):d}},e={};return d.pipe=d.then,n.each(b,function(a,f){var g=f[2],h=f[3];d[f[1]]=g.add,h&&g.add(function(){c=h},b[1^a][2].disable,b[2][2].lock),e[f[0]]=function(){return e[f[0]+"With"](this===e?d:this,arguments),this},e[f[0]+"With"]=g.fireWith}),d.promise(e),a&&a.call(e,e),e},when:function(a){var b=0,c=d.call(arguments),e=c.length,f=1!==e||a&&n.isFunction(a.promise)?e:0,g=1===f?a:n.Deferred(),h=function(a,b,c){return function(e){b[a]=this,c[a]=arguments.length>1?d.call(arguments):e,c===i?g.notifyWith(b,c):--f||g.resolveWith(b,c)}},i,j,k;if(e>1)for(i=new Array(e),j=new Array(e),k=new Array(e);e>b;b++)c[b]&&n.isFunction(c[b].promise)?c[b].promise().done(h(b,k,c)).fail(g.reject).progress(h(b,j,i)):--f;return f||g.resolveWith(k,c),g.promise()}});var I;n.fn.ready=function(a){return n.ready.promise().done(a),this},n.extend({isReady:!1,readyWait:1,holdReady:function(a){a?n.readyWait++:n.ready(!0)},ready:function(a){if(a===!0?!--n.readyWait:!n.isReady){if(!z.body)return setTimeout(n.ready);n.isReady=!0,a!==!0&&--n.readyWait>0||(I.resolveWith(z,[n]),n.fn.trigger&&n(z).trigger("ready").off("ready"))}}});function J(){z.addEventListener?(z.removeEventListener("DOMContentLoaded",K,!1),a.removeEventListener("load",K,!1)):(z.detachEvent("onreadystatechange",K),a.detachEvent("onload",K))}function K(){(z.addEventListener||"load"===event.type||"complete"===z.readyState)&&(J(),n.ready())}n.ready.promise=function(b){if(!I)if(I=n.Deferred(),"complete"===z.readyState)setTimeout(n.ready);else if(z.addEventListener)z.addEventListener("DOMContentLoaded",K,!1),a.addEventListener("load",K,!1);else{z.attachEvent("onreadystatechange",K),a.attachEvent("onload",K);var c=!1;try{c=null==a.frameElement&&z.documentElement}catch(d){}c&&c.doScroll&&!function e(){if(!n.isReady){try{c.doScroll("left")}catch(a){return setTimeout(e,50)}J(),n.ready()}}()}return I.promise(b)};var L="undefined",M;for(M in n(l))break;l.ownLast="0"!==M,l.inlineBlockNeedsLayout=!1,n(function(){var a,b,c=z.getElementsByTagName("body")[0];c&&(a=z.createElement("div"),a.style.cssText="border:0;width:0;height:0;position:absolute;top:0;left:-9999px;margin-top:1px",b=z.createElement("div"),c.appendChild(a).appendChild(b),typeof b.style.zoom!==L&&(b.style.cssText="border:0;margin:0;width:1px;padding:1px;display:inline;zoom:1",(l.inlineBlockNeedsLayout=3===b.offsetWidth)&&(c.style.zoom=1)),c.removeChild(a),a=b=null)}),function(){var a=z.createElement("div");if(null==l.deleteExpando){l.deleteExpando=!0;try{delete a.test}catch(b){l.deleteExpando=!1}}a=null}(),n.acceptData=function(a){var b=n.noData[(a.nodeName+" ").toLowerCase()],c=+a.nodeType||1;return 1!==c&&9!==c?!1:!b||b!==!0&&a.getAttribute("classid")===b};var N=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,O=/([A-Z])/g;function P(a,b,c){if(void 0===c&&1===a.nodeType){var d="data-"+b.replace(O,"-$1").toLowerCase();if(c=a.getAttribute(d),"string"==typeof c){try{c="true"===c?!0:"false"===c?!1:"null"===c?null:+c+""===c?+c:N.test(c)?n.parseJSON(c):c}catch(e){}n.data(a,b,c)}else c=void 0}return c}function Q(a){var b;for(b in a)if(("data"!==b||!n.isEmptyObject(a[b]))&&"toJSON"!==b)return!1;return!0}function R(a,b,d,e){if(n.acceptData(a)){var f,g,h=n.expando,i=a.nodeType,j=i?n.cache:a,k=i?a[h]:a[h]&&h;if(k&&j[k]&&(e||j[k].data)||void 0!==d||"string"!=typeof b)return k||(k=i?a[h]=c.pop()||n.guid++:h),j[k]||(j[k]=i?{}:{toJSON:n.noop}),("object"==typeof b||"function"==typeof b)&&(e?j[k]=n.extend(j[k],b):j[k].data=n.extend(j[k].data,b)),g=j[k],e||(g.data||(g.data={}),g=g.data),void 0!==d&&(g[n.camelCase(b)]=d),"string"==typeof b?(f=g[b],null==f&&(f=g[n.camelCase(b)])):f=g,f}}function S(a,b,c){if(n.acceptData(a)){var d,e,f=a.nodeType,g=f?n.cache:a,h=f?a[n.expando]:n.expando;if(g[h]){if(b&&(d=c?g[h]:g[h].data)){n.isArray(b)?b=b.concat(n.map(b,n.camelCase)):b in d?b=[b]:(b=n.camelCase(b),b=b in d?[b]:b.split(" ")),e=b.length;while(e--)delete d[b[e]];if(c?!Q(d):!n.isEmptyObject(d))return}(c||(delete g[h].data,Q(g[h])))&&(f?n.cleanData([a],!0):l.deleteExpando||g!=g.window?delete g[h]:g[h]=null)}}}n.extend({cache:{},noData:{"applet ":!0,"embed ":!0,"object ":"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"},hasData:function(a){return a=a.nodeType?n.cache[a[n.expando]]:a[n.expando],!!a&&!Q(a)},data:function(a,b,c){return R(a,b,c)},removeData:function(a,b){return S(a,b)},_data:function(a,b,c){return R(a,b,c,!0)},_removeData:function(a,b){return S(a,b,!0)}}),n.fn.extend({data:function(a,b){var c,d,e,f=this[0],g=f&&f.attributes;if(void 0===a){if(this.length&&(e=n.data(f),1===f.nodeType&&!n._data(f,"parsedAttrs"))){c=g.length;while(c--)d=g[c].name,0===d.indexOf("data-")&&(d=n.camelCase(d.slice(5)),P(f,d,e[d]));n._data(f,"parsedAttrs",!0)}return e}return"object"==typeof a?this.each(function(){n.data(this,a)}):arguments.length>1?this.each(function(){n.data(this,a,b)}):f?P(f,a,n.data(f,a)):void 0},removeData:function(a){return this.each(function(){n.removeData(this,a)})}}),n.extend({queue:function(a,b,c){var d;return a?(b=(b||"fx")+"queue",d=n._data(a,b),c&&(!d||n.isArray(c)?d=n._data(a,b,n.makeArray(c)):d.push(c)),d||[]):void 0},dequeue:function(a,b){b=b||"fx";var c=n.queue(a,b),d=c.length,e=c.shift(),f=n._queueHooks(a,b),g=function(){n.dequeue(a,b)};"inprogress"===e&&(e=c.shift(),d--),e&&("fx"===b&&c.unshift("inprogress"),delete f.stop,e.call(a,g,f)),!d&&f&&f.empty.fire()},_queueHooks:function(a,b){var c=b+"queueHooks";return n._data(a,c)||n._data(a,c,{empty:n.Callbacks("once memory").add(function(){n._removeData(a,b+"queue"),n._removeData(a,c)})})}}),n.fn.extend({queue:function(a,b){var c=2;return"string"!=typeof a&&(b=a,a="fx",c--),arguments.length<c?n.queue(this[0],a):void 0===b?this:this.each(function(){var c=n.queue(this,a,b);n._queueHooks(this,a),"fx"===a&&"inprogress"!==c[0]&&n.dequeue(this,a)})},dequeue:function(a){return this.each(function(){n.dequeue(this,a)})},clearQueue:function(a){return this.queue(a||"fx",[])},promise:function(a,b){var c,d=1,e=n.Deferred(),f=this,g=this.length,h=function(){--d||e.resolveWith(f,[f])};"string"!=typeof a&&(b=a,a=void 0),a=a||"fx";while(g--)c=n._data(f[g],a+"queueHooks"),c&&c.empty&&(d++,c.empty.add(h));return h(),e.promise(b)}});var T=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,U=["Top","Right","Bottom","Left"],V=function(a,b){return a=b||a,"none"===n.css(a,"display")||!n.contains(a.ownerDocument,a)},W=n.access=function(a,b,c,d,e,f,g){var h=0,i=a.length,j=null==c;if("object"===n.type(c)){e=!0;for(h in c)n.access(a,b,h,c[h],!0,f,g)}else if(void 0!==d&&(e=!0,n.isFunction(d)||(g=!0),j&&(g?(b.call(a,d),b=null):(j=b,b=function(a,b,c){return j.call(n(a),c)})),b))for(;i>h;h++)b(a[h],c,g?d:d.call(a[h],h,b(a[h],c)));return e?a:j?b.call(a):i?b(a[0],c):f},X=/^(?:checkbox|radio)$/i;!function(){var a=z.createDocumentFragment(),b=z.createElement("div"),c=z.createElement("input");if(b.setAttribute("className","t"),b.innerHTML="  <link/><table></table><a href='/a'>a</a>",l.leadingWhitespace=3===b.firstChild.nodeType,l.tbody=!b.getElementsByTagName("tbody").length,l.htmlSerialize=!!b.getElementsByTagName("link").length,l.html5Clone="<:nav></:nav>"!==z.createElement("nav").cloneNode(!0).outerHTML,c.type="checkbox",c.checked=!0,a.appendChild(c),l.appendChecked=c.checked,b.innerHTML="<textarea>x</textarea>",l.noCloneChecked=!!b.cloneNode(!0).lastChild.defaultValue,a.appendChild(b),b.innerHTML="<input type='radio' checked='checked' name='t'/>",l.checkClone=b.cloneNode(!0).cloneNode(!0).lastChild.checked,l.noCloneEvent=!0,b.attachEvent&&(b.attachEvent("onclick",function(){l.noCloneEvent=!1}),b.cloneNode(!0).click()),null==l.deleteExpando){l.deleteExpando=!0;try{delete b.test}catch(d){l.deleteExpando=!1}}a=b=c=null}(),function(){var b,c,d=z.createElement("div");for(b in{submit:!0,change:!0,focusin:!0})c="on"+b,(l[b+"Bubbles"]=c in a)||(d.setAttribute(c,"t"),l[b+"Bubbles"]=d.attributes[c].expando===!1);d=null}();var Y=/^(?:input|select|textarea)$/i,Z=/^key/,$=/^(?:mouse|contextmenu)|click/,_=/^(?:focusinfocus|focusoutblur)$/,ab=/^([^.]*)(?:\.(.+)|)$/;function bb(){return!0}function cb(){return!1}function db(){try{return z.activeElement}catch(a){}}n.event={global:{},add:function(a,b,c,d,e){var f,g,h,i,j,k,l,m,o,p,q,r=n._data(a);if(r){c.handler&&(i=c,c=i.handler,e=i.selector),c.guid||(c.guid=n.guid++),(g=r.events)||(g=r.events={}),(k=r.handle)||(k=r.handle=function(a){return typeof n===L||a&&n.event.triggered===a.type?void 0:n.event.dispatch.apply(k.elem,arguments)},k.elem=a),b=(b||"").match(F)||[""],h=b.length;while(h--)f=ab.exec(b[h])||[],o=q=f[1],p=(f[2]||"").split(".").sort(),o&&(j=n.event.special[o]||{},o=(e?j.delegateType:j.bindType)||o,j=n.event.special[o]||{},l=n.extend({type:o,origType:q,data:d,handler:c,guid:c.guid,selector:e,needsContext:e&&n.expr.match.needsContext.test(e),namespace:p.join(".")},i),(m=g[o])||(m=g[o]=[],m.delegateCount=0,j.setup&&j.setup.call(a,d,p,k)!==!1||(a.addEventListener?a.addEventListener(o,k,!1):a.attachEvent&&a.attachEvent("on"+o,k))),j.add&&(j.add.call(a,l),l.handler.guid||(l.handler.guid=c.guid)),e?m.splice(m.delegateCount++,0,l):m.push(l),n.event.global[o]=!0);a=null}},remove:function(a,b,c,d,e){var f,g,h,i,j,k,l,m,o,p,q,r=n.hasData(a)&&n._data(a);if(r&&(k=r.events)){b=(b||"").match(F)||[""],j=b.length;while(j--)if(h=ab.exec(b[j])||[],o=q=h[1],p=(h[2]||"").split(".").sort(),o){l=n.event.special[o]||{},o=(d?l.delegateType:l.bindType)||o,m=k[o]||[],h=h[2]&&new RegExp("(^|\\.)"+p.join("\\.(?:.*\\.|)")+"(\\.|$)"),i=f=m.length;while(f--)g=m[f],!e&&q!==g.origType||c&&c.guid!==g.guid||h&&!h.test(g.namespace)||d&&d!==g.selector&&("**"!==d||!g.selector)||(m.splice(f,1),g.selector&&m.delegateCount--,l.remove&&l.remove.call(a,g));i&&!m.length&&(l.teardown&&l.teardown.call(a,p,r.handle)!==!1||n.removeEvent(a,o,r.handle),delete k[o])}else for(o in k)n.event.remove(a,o+b[j],c,d,!0);n.isEmptyObject(k)&&(delete r.handle,n._removeData(a,"events"))}},trigger:function(b,c,d,e){var f,g,h,i,k,l,m,o=[d||z],p=j.call(b,"type")?b.type:b,q=j.call(b,"namespace")?b.namespace.split("."):[];if(h=l=d=d||z,3!==d.nodeType&&8!==d.nodeType&&!_.test(p+n.event.triggered)&&(p.indexOf(".")>=0&&(q=p.split("."),p=q.shift(),q.sort()),g=p.indexOf(":")<0&&"on"+p,b=b[n.expando]?b:new n.Event(p,"object"==typeof b&&b),b.isTrigger=e?2:3,b.namespace=q.join("."),b.namespace_re=b.namespace?new RegExp("(^|\\.)"+q.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,b.result=void 0,b.target||(b.target=d),c=null==c?[b]:n.makeArray(c,[b]),k=n.event.special[p]||{},e||!k.trigger||k.trigger.apply(d,c)!==!1)){if(!e&&!k.noBubble&&!n.isWindow(d)){for(i=k.delegateType||p,_.test(i+p)||(h=h.parentNode);h;h=h.parentNode)o.push(h),l=h;l===(d.ownerDocument||z)&&o.push(l.defaultView||l.parentWindow||a)}m=0;while((h=o[m++])&&!b.isPropagationStopped())b.type=m>1?i:k.bindType||p,f=(n._data(h,"events")||{})[b.type]&&n._data(h,"handle"),f&&f.apply(h,c),f=g&&h[g],f&&f.apply&&n.acceptData(h)&&(b.result=f.apply(h,c),b.result===!1&&b.preventDefault());if(b.type=p,!e&&!b.isDefaultPrevented()&&(!k._default||k._default.apply(o.pop(),c)===!1)&&n.acceptData(d)&&g&&d[p]&&!n.isWindow(d)){l=d[g],l&&(d[g]=null),n.event.triggered=p;try{d[p]()}catch(r){}n.event.triggered=void 0,l&&(d[g]=l)}return b.result}},dispatch:function(a){a=n.event.fix(a);var b,c,e,f,g,h=[],i=d.call(arguments),j=(n._data(this,"events")||{})[a.type]||[],k=n.event.special[a.type]||{};if(i[0]=a,a.delegateTarget=this,!k.preDispatch||k.preDispatch.call(this,a)!==!1){h=n.event.handlers.call(this,a,j),b=0;while((f=h[b++])&&!a.isPropagationStopped()){a.currentTarget=f.elem,g=0;while((e=f.handlers[g++])&&!a.isImmediatePropagationStopped())(!a.namespace_re||a.namespace_re.test(e.namespace))&&(a.handleObj=e,a.data=e.data,c=((n.event.special[e.origType]||{}).handle||e.handler).apply(f.elem,i),void 0!==c&&(a.result=c)===!1&&(a.preventDefault(),a.stopPropagation()))}return k.postDispatch&&k.postDispatch.call(this,a),a.result}},handlers:function(a,b){var c,d,e,f,g=[],h=b.delegateCount,i=a.target;if(h&&i.nodeType&&(!a.button||"click"!==a.type))for(;i!=this;i=i.parentNode||this)if(1===i.nodeType&&(i.disabled!==!0||"click"!==a.type)){for(e=[],f=0;h>f;f++)d=b[f],c=d.selector+" ",void 0===e[c]&&(e[c]=d.needsContext?n(c,this).index(i)>=0:n.find(c,this,null,[i]).length),e[c]&&e.push(d);e.length&&g.push({elem:i,handlers:e})}return h<b.length&&g.push({elem:this,handlers:b.slice(h)}),g},fix:function(a){if(a[n.expando])return a;var b,c,d,e=a.type,f=a,g=this.fixHooks[e];g||(this.fixHooks[e]=g=$.test(e)?this.mouseHooks:Z.test(e)?this.keyHooks:{}),d=g.props?this.props.concat(g.props):this.props,a=new n.Event(f),b=d.length;while(b--)c=d[b],a[c]=f[c];return a.target||(a.target=f.srcElement||z),3===a.target.nodeType&&(a.target=a.target.parentNode),a.metaKey=!!a.metaKey,g.filter?g.filter(a,f):a},props:"altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),fixHooks:{},keyHooks:{props:"char charCode key keyCode".split(" "),filter:function(a,b){return null==a.which&&(a.which=null!=b.charCode?b.charCode:b.keyCode),a}},mouseHooks:{props:"button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),filter:function(a,b){var c,d,e,f=b.button,g=b.fromElement;return null==a.pageX&&null!=b.clientX&&(d=a.target.ownerDocument||z,e=d.documentElement,c=d.body,a.pageX=b.clientX+(e&&e.scrollLeft||c&&c.scrollLeft||0)-(e&&e.clientLeft||c&&c.clientLeft||0),a.pageY=b.clientY+(e&&e.scrollTop||c&&c.scrollTop||0)-(e&&e.clientTop||c&&c.clientTop||0)),!a.relatedTarget&&g&&(a.relatedTarget=g===a.target?b.toElement:g),a.which||void 0===f||(a.which=1&f?1:2&f?3:4&f?2:0),a}},special:{load:{noBubble:!0},focus:{trigger:function(){if(this!==db()&&this.focus)try{return this.focus(),!1}catch(a){}},delegateType:"focusin"},blur:{trigger:function(){return this===db()&&this.blur?(this.blur(),!1):void 0},delegateType:"focusout"},click:{trigger:function(){return n.nodeName(this,"input")&&"checkbox"===this.type&&this.click?(this.click(),!1):void 0},_default:function(a){return n.nodeName(a.target,"a")}},beforeunload:{postDispatch:function(a){void 0!==a.result&&(a.originalEvent.returnValue=a.result)}}},simulate:function(a,b,c,d){var e=n.extend(new n.Event,c,{type:a,isSimulated:!0,originalEvent:{}});d?n.event.trigger(e,null,b):n.event.dispatch.call(b,e),e.isDefaultPrevented()&&c.preventDefault()}},n.removeEvent=z.removeEventListener?function(a,b,c){a.removeEventListener&&a.removeEventListener(b,c,!1)}:function(a,b,c){var d="on"+b;a.detachEvent&&(typeof a[d]===L&&(a[d]=null),a.detachEvent(d,c))},n.Event=function(a,b){return this instanceof n.Event?(a&&a.type?(this.originalEvent=a,this.type=a.type,this.isDefaultPrevented=a.defaultPrevented||void 0===a.defaultPrevented&&(a.returnValue===!1||a.getPreventDefault&&a.getPreventDefault())?bb:cb):this.type=a,b&&n.extend(this,b),this.timeStamp=a&&a.timeStamp||n.now(),void(this[n.expando]=!0)):new n.Event(a,b)},n.Event.prototype={isDefaultPrevented:cb,isPropagationStopped:cb,isImmediatePropagationStopped:cb,preventDefault:function(){var a=this.originalEvent;this.isDefaultPrevented=bb,a&&(a.preventDefault?a.preventDefault():a.returnValue=!1)},stopPropagation:function(){var a=this.originalEvent;this.isPropagationStopped=bb,a&&(a.stopPropagation&&a.stopPropagation(),a.cancelBubble=!0)},stopImmediatePropagation:function(){this.isImmediatePropagationStopped=bb,this.stopPropagation()}},n.each({mouseenter:"mouseover",mouseleave:"mouseout"},function(a,b){n.event.special[a]={delegateType:b,bindType:b,handle:function(a){var c,d=this,e=a.relatedTarget,f=a.handleObj;return(!e||e!==d&&!n.contains(d,e))&&(a.type=f.origType,c=f.handler.apply(this,arguments),a.type=b),c}}}),l.submitBubbles||(n.event.special.submit={setup:function(){return n.nodeName(this,"form")?!1:void n.event.add(this,"click._submit keypress._submit",function(a){var b=a.target,c=n.nodeName(b,"input")||n.nodeName(b,"button")?b.form:void 0;c&&!n._data(c,"submitBubbles")&&(n.event.add(c,"submit._submit",function(a){a._submit_bubble=!0}),n._data(c,"submitBubbles",!0))})},postDispatch:function(a){a._submit_bubble&&(delete a._submit_bubble,this.parentNode&&!a.isTrigger&&n.event.simulate("submit",this.parentNode,a,!0))},teardown:function(){return n.nodeName(this,"form")?!1:void n.event.remove(this,"._submit")}}),l.changeBubbles||(n.event.special.change={setup:function(){return Y.test(this.nodeName)?(("checkbox"===this.type||"radio"===this.type)&&(n.event.add(this,"propertychange._change",function(a){"checked"===a.originalEvent.propertyName&&(this._just_changed=!0)}),n.event.add(this,"click._change",function(a){this._just_changed&&!a.isTrigger&&(this._just_changed=!1),n.event.simulate("change",this,a,!0)})),!1):void n.event.add(this,"beforeactivate._change",function(a){var b=a.target;Y.test(b.nodeName)&&!n._data(b,"changeBubbles")&&(n.event.add(b,"change._change",function(a){!this.parentNode||a.isSimulated||a.isTrigger||n.event.simulate("change",this.parentNode,a,!0)}),n._data(b,"changeBubbles",!0))})},handle:function(a){var b=a.target;return this!==b||a.isSimulated||a.isTrigger||"radio"!==b.type&&"checkbox"!==b.type?a.handleObj.handler.apply(this,arguments):void 0},teardown:function(){return n.event.remove(this,"._change"),!Y.test(this.nodeName)}}),l.focusinBubbles||n.each({focus:"focusin",blur:"focusout"},function(a,b){var c=function(a){n.event.simulate(b,a.target,n.event.fix(a),!0)};n.event.special[b]={setup:function(){var d=this.ownerDocument||this,e=n._data(d,b);e||d.addEventListener(a,c,!0),n._data(d,b,(e||0)+1)},teardown:function(){var d=this.ownerDocument||this,e=n._data(d,b)-1;e?n._data(d,b,e):(d.removeEventListener(a,c,!0),n._removeData(d,b))}}}),n.fn.extend({on:function(a,b,c,d,e){var f,g;if("object"==typeof a){"string"!=typeof b&&(c=c||b,b=void 0);for(f in a)this.on(f,b,c,a[f],e);return this}if(null==c&&null==d?(d=b,c=b=void 0):null==d&&("string"==typeof b?(d=c,c=void 0):(d=c,c=b,b=void 0)),d===!1)d=cb;else if(!d)return this;return 1===e&&(g=d,d=function(a){return n().off(a),g.apply(this,arguments)},d.guid=g.guid||(g.guid=n.guid++)),this.each(function(){n.event.add(this,a,d,c,b)})},one:function(a,b,c,d){return this.on(a,b,c,d,1)},off:function(a,b,c){var d,e;if(a&&a.preventDefault&&a.handleObj)return d=a.handleObj,n(a.delegateTarget).off(d.namespace?d.origType+"."+d.namespace:d.origType,d.selector,d.handler),this;if("object"==typeof a){for(e in a)this.off(e,b,a[e]);return this}return(b===!1||"function"==typeof b)&&(c=b,b=void 0),c===!1&&(c=cb),this.each(function(){n.event.remove(this,a,c,b)})},trigger:function(a,b){return this.each(function(){n.event.trigger(a,b,this)})},triggerHandler:function(a,b){var c=this[0];return c?n.event.trigger(a,b,c,!0):void 0}});function eb(a){var b=fb.split("|"),c=a.createDocumentFragment();if(c.createElement)while(b.length)c.createElement(b.pop());return c}var fb="abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",gb=/ jQuery\d+="(?:null|\d+)"/g,hb=new RegExp("<(?:"+fb+")[\\s/>]","i"),ib=/^\s+/,jb=/<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,kb=/<([\w:]+)/,lb=/<tbody/i,mb=/<|&#?\w+;/,nb=/<(?:script|style|link)/i,ob=/checked\s*(?:[^=]|=\s*.checked.)/i,pb=/^$|\/(?:java|ecma)script/i,qb=/^true\/(.*)/,rb=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g,sb={option:[1,"<select multiple='multiple'>","</select>"],legend:[1,"<fieldset>","</fieldset>"],area:[1,"<map>","</map>"],param:[1,"<object>","</object>"],thead:[1,"<table>","</table>"],tr:[2,"<table><tbody>","</tbody></table>"],col:[2,"<table><tbody></tbody><colgroup>","</colgroup></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:l.htmlSerialize?[0,"",""]:[1,"X<div>","</div>"]},tb=eb(z),ub=tb.appendChild(z.createElement("div"));sb.optgroup=sb.option,sb.tbody=sb.tfoot=sb.colgroup=sb.caption=sb.thead,sb.th=sb.td;function vb(a,b){var c,d,e=0,f=typeof a.getElementsByTagName!==L?a.getElementsByTagName(b||"*"):typeof a.querySelectorAll!==L?a.querySelectorAll(b||"*"):void 0;if(!f)for(f=[],c=a.childNodes||a;null!=(d=c[e]);e++)!b||n.nodeName(d,b)?f.push(d):n.merge(f,vb(d,b));return void 0===b||b&&n.nodeName(a,b)?n.merge([a],f):f}function wb(a){X.test(a.type)&&(a.defaultChecked=a.checked)}function xb(a,b){return n.nodeName(a,"table")&&n.nodeName(11!==b.nodeType?b:b.firstChild,"tr")?a.getElementsByTagName("tbody")[0]||a.appendChild(a.ownerDocument.createElement("tbody")):a}function yb(a){return a.type=(null!==n.find.attr(a,"type"))+"/"+a.type,a}function zb(a){var b=qb.exec(a.type);return b?a.type=b[1]:a.removeAttribute("type"),a}function Ab(a,b){for(var c,d=0;null!=(c=a[d]);d++)n._data(c,"globalEval",!b||n._data(b[d],"globalEval"))}function Bb(a,b){if(1===b.nodeType&&n.hasData(a)){var c,d,e,f=n._data(a),g=n._data(b,f),h=f.events;if(h){delete g.handle,g.events={};for(c in h)for(d=0,e=h[c].length;e>d;d++)n.event.add(b,c,h[c][d])}g.data&&(g.data=n.extend({},g.data))}}function Cb(a,b){var c,d,e;if(1===b.nodeType){if(c=b.nodeName.toLowerCase(),!l.noCloneEvent&&b[n.expando]){e=n._data(b);for(d in e.events)n.removeEvent(b,d,e.handle);b.removeAttribute(n.expando)}"script"===c&&b.text!==a.text?(yb(b).text=a.text,zb(b)):"object"===c?(b.parentNode&&(b.outerHTML=a.outerHTML),l.html5Clone&&a.innerHTML&&!n.trim(b.innerHTML)&&(b.innerHTML=a.innerHTML)):"input"===c&&X.test(a.type)?(b.defaultChecked=b.checked=a.checked,b.value!==a.value&&(b.value=a.value)):"option"===c?b.defaultSelected=b.selected=a.defaultSelected:("input"===c||"textarea"===c)&&(b.defaultValue=a.defaultValue)}}n.extend({clone:function(a,b,c){var d,e,f,g,h,i=n.contains(a.ownerDocument,a);if(l.html5Clone||n.isXMLDoc(a)||!hb.test("<"+a.nodeName+">")?f=a.cloneNode(!0):(ub.innerHTML=a.outerHTML,ub.removeChild(f=ub.firstChild)),!(l.noCloneEvent&&l.noCloneChecked||1!==a.nodeType&&11!==a.nodeType||n.isXMLDoc(a)))for(d=vb(f),h=vb(a),g=0;null!=(e=h[g]);++g)d[g]&&Cb(e,d[g]);if(b)if(c)for(h=h||vb(a),d=d||vb(f),g=0;null!=(e=h[g]);g++)Bb(e,d[g]);else Bb(a,f);return d=vb(f,"script"),d.length>0&&Ab(d,!i&&vb(a,"script")),d=h=e=null,f},buildFragment:function(a,b,c,d){for(var e,f,g,h,i,j,k,m=a.length,o=eb(b),p=[],q=0;m>q;q++)if(f=a[q],f||0===f)if("object"===n.type(f))n.merge(p,f.nodeType?[f]:f);else if(mb.test(f)){h=h||o.appendChild(b.createElement("div")),i=(kb.exec(f)||["",""])[1].toLowerCase(),k=sb[i]||sb._default,h.innerHTML=k[1]+f.replace(jb,"<$1></$2>")+k[2],e=k[0];while(e--)h=h.lastChild;if(!l.leadingWhitespace&&ib.test(f)&&p.push(b.createTextNode(ib.exec(f)[0])),!l.tbody){f="table"!==i||lb.test(f)?"<table>"!==k[1]||lb.test(f)?0:h:h.firstChild,e=f&&f.childNodes.length;while(e--)n.nodeName(j=f.childNodes[e],"tbody")&&!j.childNodes.length&&f.removeChild(j)}n.merge(p,h.childNodes),h.textContent="";while(h.firstChild)h.removeChild(h.firstChild);h=o.lastChild}else p.push(b.createTextNode(f));h&&o.removeChild(h),l.appendChecked||n.grep(vb(p,"input"),wb),q=0;while(f=p[q++])if((!d||-1===n.inArray(f,d))&&(g=n.contains(f.ownerDocument,f),h=vb(o.appendChild(f),"script"),g&&Ab(h),c)){e=0;while(f=h[e++])pb.test(f.type||"")&&c.push(f)}return h=null,o},cleanData:function(a,b){for(var d,e,f,g,h=0,i=n.expando,j=n.cache,k=l.deleteExpando,m=n.event.special;null!=(d=a[h]);h++)if((b||n.acceptData(d))&&(f=d[i],g=f&&j[f])){if(g.events)for(e in g.events)m[e]?n.event.remove(d,e):n.removeEvent(d,e,g.handle);j[f]&&(delete j[f],k?delete d[i]:typeof d.removeAttribute!==L?d.removeAttribute(i):d[i]=null,c.push(f))}}}),n.fn.extend({text:function(a){return W(this,function(a){return void 0===a?n.text(this):this.empty().append((this[0]&&this[0].ownerDocument||z).createTextNode(a))},null,a,arguments.length)},append:function(){return this.domManip(arguments,function(a){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var b=xb(this,a);b.appendChild(a)}})},prepend:function(){return this.domManip(arguments,function(a){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var b=xb(this,a);b.insertBefore(a,b.firstChild)}})},before:function(){return this.domManip(arguments,function(a){this.parentNode&&this.parentNode.insertBefore(a,this)})},after:function(){return this.domManip(arguments,function(a){this.parentNode&&this.parentNode.insertBefore(a,this.nextSibling)})},remove:function(a,b){for(var c,d=a?n.filter(a,this):this,e=0;null!=(c=d[e]);e++)b||1!==c.nodeType||n.cleanData(vb(c)),c.parentNode&&(b&&n.contains(c.ownerDocument,c)&&Ab(vb(c,"script")),c.parentNode.removeChild(c));return this},empty:function(){for(var a,b=0;null!=(a=this[b]);b++){1===a.nodeType&&n.cleanData(vb(a,!1));while(a.firstChild)a.removeChild(a.firstChild);a.options&&n.nodeName(a,"select")&&(a.options.length=0)}return this},clone:function(a,b){return a=null==a?!1:a,b=null==b?a:b,this.map(function(){return n.clone(this,a,b)})},html:function(a){return W(this,function(a){var b=this[0]||{},c=0,d=this.length;if(void 0===a)return 1===b.nodeType?b.innerHTML.replace(gb,""):void 0;if(!("string"!=typeof a||nb.test(a)||!l.htmlSerialize&&hb.test(a)||!l.leadingWhitespace&&ib.test(a)||sb[(kb.exec(a)||["",""])[1].toLowerCase()])){a=a.replace(jb,"<$1></$2>");try{for(;d>c;c++)b=this[c]||{},1===b.nodeType&&(n.cleanData(vb(b,!1)),b.innerHTML=a);b=0}catch(e){}}b&&this.empty().append(a)},null,a,arguments.length)},replaceWith:function(){var a=arguments[0];return this.domManip(arguments,function(b){a=this.parentNode,n.cleanData(vb(this)),a&&a.replaceChild(b,this)}),a&&(a.length||a.nodeType)?this:this.remove()},detach:function(a){return this.remove(a,!0)},domManip:function(a,b){a=e.apply([],a);var c,d,f,g,h,i,j=0,k=this.length,m=this,o=k-1,p=a[0],q=n.isFunction(p);if(q||k>1&&"string"==typeof p&&!l.checkClone&&ob.test(p))return this.each(function(c){var d=m.eq(c);q&&(a[0]=p.call(this,c,d.html())),d.domManip(a,b)});if(k&&(i=n.buildFragment(a,this[0].ownerDocument,!1,this),c=i.firstChild,1===i.childNodes.length&&(i=c),c)){for(g=n.map(vb(i,"script"),yb),f=g.length;k>j;j++)d=i,j!==o&&(d=n.clone(d,!0,!0),f&&n.merge(g,vb(d,"script"))),b.call(this[j],d,j);if(f)for(h=g[g.length-1].ownerDocument,n.map(g,zb),j=0;f>j;j++)d=g[j],pb.test(d.type||"")&&!n._data(d,"globalEval")&&n.contains(h,d)&&(d.src?n._evalUrl&&n._evalUrl(d.src):n.globalEval((d.text||d.textContent||d.innerHTML||"").replace(rb,"")));i=c=null}return this}}),n.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(a,b){n.fn[a]=function(a){for(var c,d=0,e=[],g=n(a),h=g.length-1;h>=d;d++)c=d===h?this:this.clone(!0),n(g[d])[b](c),f.apply(e,c.get());return this.pushStack(e)}});var Db,Eb={};function Fb(b,c){var d=n(c.createElement(b)).appendTo(c.body),e=a.getDefaultComputedStyle?a.getDefaultComputedStyle(d[0]).display:n.css(d[0],"display");return d.detach(),e}function Gb(a){var b=z,c=Eb[a];return c||(c=Fb(a,b),"none"!==c&&c||(Db=(Db||n("<iframe frameborder='0' width='0' height='0'/>")).appendTo(b.documentElement),b=(Db[0].contentWindow||Db[0].contentDocument).document,b.write(),b.close(),c=Fb(a,b),Db.detach()),Eb[a]=c),c}!function(){var a,b,c=z.createElement("div"),d="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;padding:0;margin:0;border:0";c.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",a=c.getElementsByTagName("a")[0],a.style.cssText="float:left;opacity:.5",l.opacity=/^0.5/.test(a.style.opacity),l.cssFloat=!!a.style.cssFloat,c.style.backgroundClip="content-box",c.cloneNode(!0).style.backgroundClip="",l.clearCloneStyle="content-box"===c.style.backgroundClip,a=c=null,l.shrinkWrapBlocks=function(){var a,c,e,f;if(null==b){if(a=z.getElementsByTagName("body")[0],!a)return;f="border:0;width:0;height:0;position:absolute;top:0;left:-9999px",c=z.createElement("div"),e=z.createElement("div"),a.appendChild(c).appendChild(e),b=!1,typeof e.style.zoom!==L&&(e.style.cssText=d+";width:1px;padding:1px;zoom:1",e.innerHTML="<div></div>",e.firstChild.style.width="5px",b=3!==e.offsetWidth),a.removeChild(c),a=c=e=null}return b}}();var Hb=/^margin/,Ib=new RegExp("^("+T+")(?!px)[a-z%]+$","i"),Jb,Kb,Lb=/^(top|right|bottom|left)$/;a.getComputedStyle?(Jb=function(a){return a.ownerDocument.defaultView.getComputedStyle(a,null)},Kb=function(a,b,c){var d,e,f,g,h=a.style;return c=c||Jb(a),g=c?c.getPropertyValue(b)||c[b]:void 0,c&&(""!==g||n.contains(a.ownerDocument,a)||(g=n.style(a,b)),Ib.test(g)&&Hb.test(b)&&(d=h.width,e=h.minWidth,f=h.maxWidth,h.minWidth=h.maxWidth=h.width=g,g=c.width,h.width=d,h.minWidth=e,h.maxWidth=f)),void 0===g?g:g+""}):z.documentElement.currentStyle&&(Jb=function(a){return a.currentStyle},Kb=function(a,b,c){var d,e,f,g,h=a.style;return c=c||Jb(a),g=c?c[b]:void 0,null==g&&h&&h[b]&&(g=h[b]),Ib.test(g)&&!Lb.test(b)&&(d=h.left,e=a.runtimeStyle,f=e&&e.left,f&&(e.left=a.currentStyle.left),h.left="fontSize"===b?"1em":g,g=h.pixelLeft+"px",h.left=d,f&&(e.left=f)),void 0===g?g:g+""||"auto"});function Mb(a,b){return{get:function(){var c=a();if(null!=c)return c?void delete this.get:(this.get=b).apply(this,arguments)}}}!function(){var b,c,d,e,f,g,h=z.createElement("div"),i="border:0;width:0;height:0;position:absolute;top:0;left:-9999px",j="-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;display:block;padding:0;margin:0;border:0";h.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",b=h.getElementsByTagName("a")[0],b.style.cssText="float:left;opacity:.5",l.opacity=/^0.5/.test(b.style.opacity),l.cssFloat=!!b.style.cssFloat,h.style.backgroundClip="content-box",h.cloneNode(!0).style.backgroundClip="",l.clearCloneStyle="content-box"===h.style.backgroundClip,b=h=null,n.extend(l,{reliableHiddenOffsets:function(){if(null!=c)return c;var a,b,d,e=z.createElement("div"),f=z.getElementsByTagName("body")[0];if(f)return e.setAttribute("className","t"),e.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",a=z.createElement("div"),a.style.cssText=i,f.appendChild(a).appendChild(e),e.innerHTML="<table><tr><td></td><td>t</td></tr></table>",b=e.getElementsByTagName("td"),b[0].style.cssText="padding:0;margin:0;border:0;display:none",d=0===b[0].offsetHeight,b[0].style.display="",b[1].style.display="none",c=d&&0===b[0].offsetHeight,f.removeChild(a),e=f=null,c},boxSizing:function(){return null==d&&k(),d},boxSizingReliable:function(){return null==e&&k(),e},pixelPosition:function(){return null==f&&k(),f},reliableMarginRight:function(){var b,c,d,e;if(null==g&&a.getComputedStyle){if(b=z.getElementsByTagName("body")[0],!b)return;c=z.createElement("div"),d=z.createElement("div"),c.style.cssText=i,b.appendChild(c).appendChild(d),e=d.appendChild(z.createElement("div")),e.style.cssText=d.style.cssText=j,e.style.marginRight=e.style.width="0",d.style.width="1px",g=!parseFloat((a.getComputedStyle(e,null)||{}).marginRight),b.removeChild(c)}return g}});function k(){var b,c,h=z.getElementsByTagName("body")[0];h&&(b=z.createElement("div"),c=z.createElement("div"),b.style.cssText=i,h.appendChild(b).appendChild(c),c.style.cssText="-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;position:absolute;display:block;padding:1px;border:1px;width:4px;margin-top:1%;top:1%",n.swap(h,null!=h.style.zoom?{zoom:1}:{},function(){d=4===c.offsetWidth}),e=!0,f=!1,g=!0,a.getComputedStyle&&(f="1%"!==(a.getComputedStyle(c,null)||{}).top,e="4px"===(a.getComputedStyle(c,null)||{width:"4px"}).width),h.removeChild(b),c=h=null)}}(),n.swap=function(a,b,c,d){var e,f,g={};for(f in b)g[f]=a.style[f],a.style[f]=b[f];e=c.apply(a,d||[]);for(f in b)a.style[f]=g[f];return e};var Nb=/alpha\([^)]*\)/i,Ob=/opacity\s*=\s*([^)]*)/,Pb=/^(none|table(?!-c[ea]).+)/,Qb=new RegExp("^("+T+")(.*)$","i"),Rb=new RegExp("^([+-])=("+T+")","i"),Sb={position:"absolute",visibility:"hidden",display:"block"},Tb={letterSpacing:0,fontWeight:400},Ub=["Webkit","O","Moz","ms"];function Vb(a,b){if(b in a)return b;var c=b.charAt(0).toUpperCase()+b.slice(1),d=b,e=Ub.length;while(e--)if(b=Ub[e]+c,b in a)return b;return d}function Wb(a,b){for(var c,d,e,f=[],g=0,h=a.length;h>g;g++)d=a[g],d.style&&(f[g]=n._data(d,"olddisplay"),c=d.style.display,b?(f[g]||"none"!==c||(d.style.display=""),""===d.style.display&&V(d)&&(f[g]=n._data(d,"olddisplay",Gb(d.nodeName)))):f[g]||(e=V(d),(c&&"none"!==c||!e)&&n._data(d,"olddisplay",e?c:n.css(d,"display"))));for(g=0;h>g;g++)d=a[g],d.style&&(b&&"none"!==d.style.display&&""!==d.style.display||(d.style.display=b?f[g]||"":"none"));return a}function Xb(a,b,c){var d=Qb.exec(b);return d?Math.max(0,d[1]-(c||0))+(d[2]||"px"):b}function Yb(a,b,c,d,e){for(var f=c===(d?"border":"content")?4:"width"===b?1:0,g=0;4>f;f+=2)"margin"===c&&(g+=n.css(a,c+U[f],!0,e)),d?("content"===c&&(g-=n.css(a,"padding"+U[f],!0,e)),"margin"!==c&&(g-=n.css(a,"border"+U[f]+"Width",!0,e))):(g+=n.css(a,"padding"+U[f],!0,e),"padding"!==c&&(g+=n.css(a,"border"+U[f]+"Width",!0,e)));return g}function Zb(a,b,c){var d=!0,e="width"===b?a.offsetWidth:a.offsetHeight,f=Jb(a),g=l.boxSizing()&&"border-box"===n.css(a,"boxSizing",!1,f);if(0>=e||null==e){if(e=Kb(a,b,f),(0>e||null==e)&&(e=a.style[b]),Ib.test(e))return e;d=g&&(l.boxSizingReliable()||e===a.style[b]),e=parseFloat(e)||0}return e+Yb(a,b,c||(g?"border":"content"),d,f)+"px"}n.extend({cssHooks:{opacity:{get:function(a,b){if(b){var c=Kb(a,"opacity");return""===c?"1":c}}}},cssNumber:{columnCount:!0,fillOpacity:!0,fontWeight:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{"float":l.cssFloat?"cssFloat":"styleFloat"},style:function(a,b,c,d){if(a&&3!==a.nodeType&&8!==a.nodeType&&a.style){var e,f,g,h=n.camelCase(b),i=a.style;if(b=n.cssProps[h]||(n.cssProps[h]=Vb(i,h)),g=n.cssHooks[b]||n.cssHooks[h],void 0===c)return g&&"get"in g&&void 0!==(e=g.get(a,!1,d))?e:i[b];if(f=typeof c,"string"===f&&(e=Rb.exec(c))&&(c=(e[1]+1)*e[2]+parseFloat(n.css(a,b)),f="number"),null!=c&&c===c&&("number"!==f||n.cssNumber[h]||(c+="px"),l.clearCloneStyle||""!==c||0!==b.indexOf("background")||(i[b]="inherit"),!(g&&"set"in g&&void 0===(c=g.set(a,c,d)))))try{i[b]="",i[b]=c}catch(j){}}},css:function(a,b,c,d){var e,f,g,h=n.camelCase(b);return b=n.cssProps[h]||(n.cssProps[h]=Vb(a.style,h)),g=n.cssHooks[b]||n.cssHooks[h],g&&"get"in g&&(f=g.get(a,!0,c)),void 0===f&&(f=Kb(a,b,d)),"normal"===f&&b in Tb&&(f=Tb[b]),""===c||c?(e=parseFloat(f),c===!0||n.isNumeric(e)?e||0:f):f}}),n.each(["height","width"],function(a,b){n.cssHooks[b]={get:function(a,c,d){return c?0===a.offsetWidth&&Pb.test(n.css(a,"display"))?n.swap(a,Sb,function(){return Zb(a,b,d)}):Zb(a,b,d):void 0},set:function(a,c,d){var e=d&&Jb(a);return Xb(a,c,d?Yb(a,b,d,l.boxSizing()&&"border-box"===n.css(a,"boxSizing",!1,e),e):0)}}}),l.opacity||(n.cssHooks.opacity={get:function(a,b){return Ob.test((b&&a.currentStyle?a.currentStyle.filter:a.style.filter)||"")?.01*parseFloat(RegExp.$1)+"":b?"1":""},set:function(a,b){var c=a.style,d=a.currentStyle,e=n.isNumeric(b)?"alpha(opacity="+100*b+")":"",f=d&&d.filter||c.filter||"";c.zoom=1,(b>=1||""===b)&&""===n.trim(f.replace(Nb,""))&&c.removeAttribute&&(c.removeAttribute("filter"),""===b||d&&!d.filter)||(c.filter=Nb.test(f)?f.replace(Nb,e):f+" "+e)}}),n.cssHooks.marginRight=Mb(l.reliableMarginRight,function(a,b){return b?n.swap(a,{display:"inline-block"},Kb,[a,"marginRight"]):void 0}),n.each({margin:"",padding:"",border:"Width"},function(a,b){n.cssHooks[a+b]={expand:function(c){for(var d=0,e={},f="string"==typeof c?c.split(" "):[c];4>d;d++)e[a+U[d]+b]=f[d]||f[d-2]||f[0];return e}},Hb.test(a)||(n.cssHooks[a+b].set=Xb)}),n.fn.extend({css:function(a,b){return W(this,function(a,b,c){var d,e,f={},g=0;if(n.isArray(b)){for(d=Jb(a),e=b.length;e>g;g++)f[b[g]]=n.css(a,b[g],!1,d);return f}return void 0!==c?n.style(a,b,c):n.css(a,b)},a,b,arguments.length>1)},show:function(){return Wb(this,!0)},hide:function(){return Wb(this)},toggle:function(a){return"boolean"==typeof a?a?this.show():this.hide():this.each(function(){V(this)?n(this).show():n(this).hide()})}});function $b(a,b,c,d,e){return new $b.prototype.init(a,b,c,d,e)}n.Tween=$b,$b.prototype={constructor:$b,init:function(a,b,c,d,e,f){this.elem=a,this.prop=c,this.easing=e||"swing",this.options=b,this.start=this.now=this.cur(),this.end=d,this.unit=f||(n.cssNumber[c]?"":"px")},cur:function(){var a=$b.propHooks[this.prop];return a&&a.get?a.get(this):$b.propHooks._default.get(this)},run:function(a){var b,c=$b.propHooks[this.prop];return this.pos=b=this.options.duration?n.easing[this.easing](a,this.options.duration*a,0,1,this.options.duration):a,this.now=(this.end-this.start)*b+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),c&&c.set?c.set(this):$b.propHooks._default.set(this),this}},$b.prototype.init.prototype=$b.prototype,$b.propHooks={_default:{get:function(a){var b;return null==a.elem[a.prop]||a.elem.style&&null!=a.elem.style[a.prop]?(b=n.css(a.elem,a.prop,""),b&&"auto"!==b?b:0):a.elem[a.prop]},set:function(a){n.fx.step[a.prop]?n.fx.step[a.prop](a):a.elem.style&&(null!=a.elem.style[n.cssProps[a.prop]]||n.cssHooks[a.prop])?n.style(a.elem,a.prop,a.now+a.unit):a.elem[a.prop]=a.now}}},$b.propHooks.scrollTop=$b.propHooks.scrollLeft={set:function(a){a.elem.nodeType&&a.elem.parentNode&&(a.elem[a.prop]=a.now)}},n.easing={linear:function(a){return a},swing:function(a){return.5-Math.cos(a*Math.PI)/2}},n.fx=$b.prototype.init,n.fx.step={};var _b,ac,bc=/^(?:toggle|show|hide)$/,cc=new RegExp("^(?:([+-])=|)("+T+")([a-z%]*)$","i"),dc=/queueHooks$/,ec=[jc],fc={"*":[function(a,b){var c=this.createTween(a,b),d=c.cur(),e=cc.exec(b),f=e&&e[3]||(n.cssNumber[a]?"":"px"),g=(n.cssNumber[a]||"px"!==f&&+d)&&cc.exec(n.css(c.elem,a)),h=1,i=20;if(g&&g[3]!==f){f=f||g[3],e=e||[],g=+d||1;do h=h||".5",g/=h,n.style(c.elem,a,g+f);while(h!==(h=c.cur()/d)&&1!==h&&--i)}return e&&(g=c.start=+g||+d||0,c.unit=f,c.end=e[1]?g+(e[1]+1)*e[2]:+e[2]),c}]};function gc(){return setTimeout(function(){_b=void 0}),_b=n.now()}function hc(a,b){var c,d={height:a},e=0;for(b=b?1:0;4>e;e+=2-b)c=U[e],d["margin"+c]=d["padding"+c]=a;return b&&(d.opacity=d.width=a),d}function ic(a,b,c){for(var d,e=(fc[b]||[]).concat(fc["*"]),f=0,g=e.length;g>f;f++)if(d=e[f].call(c,b,a))return d}function jc(a,b,c){var d,e,f,g,h,i,j,k,m=this,o={},p=a.style,q=a.nodeType&&V(a),r=n._data(a,"fxshow");c.queue||(h=n._queueHooks(a,"fx"),null==h.unqueued&&(h.unqueued=0,i=h.empty.fire,h.empty.fire=function(){h.unqueued||i()}),h.unqueued++,m.always(function(){m.always(function(){h.unqueued--,n.queue(a,"fx").length||h.empty.fire()})})),1===a.nodeType&&("height"in b||"width"in b)&&(c.overflow=[p.overflow,p.overflowX,p.overflowY],j=n.css(a,"display"),k=Gb(a.nodeName),"none"===j&&(j=k),"inline"===j&&"none"===n.css(a,"float")&&(l.inlineBlockNeedsLayout&&"inline"!==k?p.zoom=1:p.display="inline-block")),c.overflow&&(p.overflow="hidden",l.shrinkWrapBlocks()||m.always(function(){p.overflow=c.overflow[0],p.overflowX=c.overflow[1],p.overflowY=c.overflow[2]}));for(d in b)if(e=b[d],bc.exec(e)){if(delete b[d],f=f||"toggle"===e,e===(q?"hide":"show")){if("show"!==e||!r||void 0===r[d])continue;q=!0}o[d]=r&&r[d]||n.style(a,d)}if(!n.isEmptyObject(o)){r?"hidden"in r&&(q=r.hidden):r=n._data(a,"fxshow",{}),f&&(r.hidden=!q),q?n(a).show():m.done(function(){n(a).hide()}),m.done(function(){var b;n._removeData(a,"fxshow");for(b in o)n.style(a,b,o[b])});for(d in o)g=ic(q?r[d]:0,d,m),d in r||(r[d]=g.start,q&&(g.end=g.start,g.start="width"===d||"height"===d?1:0))}}function kc(a,b){var c,d,e,f,g;for(c in a)if(d=n.camelCase(c),e=b[d],f=a[c],n.isArray(f)&&(e=f[1],f=a[c]=f[0]),c!==d&&(a[d]=f,delete a[c]),g=n.cssHooks[d],g&&"expand"in g){f=g.expand(f),delete a[d];for(c in f)c in a||(a[c]=f[c],b[c]=e)}else b[d]=e}function lc(a,b,c){var d,e,f=0,g=ec.length,h=n.Deferred().always(function(){delete i.elem}),i=function(){if(e)return!1;for(var b=_b||gc(),c=Math.max(0,j.startTime+j.duration-b),d=c/j.duration||0,f=1-d,g=0,i=j.tweens.length;i>g;g++)j.tweens[g].run(f);return h.notifyWith(a,[j,f,c]),1>f&&i?c:(h.resolveWith(a,[j]),!1)},j=h.promise({elem:a,props:n.extend({},b),opts:n.extend(!0,{specialEasing:{}},c),originalProperties:b,originalOptions:c,startTime:_b||gc(),duration:c.duration,tweens:[],createTween:function(b,c){var d=n.Tween(a,j.opts,b,c,j.opts.specialEasing[b]||j.opts.easing);return j.tweens.push(d),d},stop:function(b){var c=0,d=b?j.tweens.length:0;if(e)return this;for(e=!0;d>c;c++)j.tweens[c].run(1);return b?h.resolveWith(a,[j,b]):h.rejectWith(a,[j,b]),this}}),k=j.props;for(kc(k,j.opts.specialEasing);g>f;f++)if(d=ec[f].call(j,a,k,j.opts))return d;return n.map(k,ic,j),n.isFunction(j.opts.start)&&j.opts.start.call(a,j),n.fx.timer(n.extend(i,{elem:a,anim:j,queue:j.opts.queue})),j.progress(j.opts.progress).done(j.opts.done,j.opts.complete).fail(j.opts.fail).always(j.opts.always)}n.Animation=n.extend(lc,{tweener:function(a,b){n.isFunction(a)?(b=a,a=["*"]):a=a.split(" ");for(var c,d=0,e=a.length;e>d;d++)c=a[d],fc[c]=fc[c]||[],fc[c].unshift(b)},prefilter:function(a,b){b?ec.unshift(a):ec.push(a)}}),n.speed=function(a,b,c){var d=a&&"object"==typeof a?n.extend({},a):{complete:c||!c&&b||n.isFunction(a)&&a,duration:a,easing:c&&b||b&&!n.isFunction(b)&&b};return d.duration=n.fx.off?0:"number"==typeof d.duration?d.duration:d.duration in n.fx.speeds?n.fx.speeds[d.duration]:n.fx.speeds._default,(null==d.queue||d.queue===!0)&&(d.queue="fx"),d.old=d.complete,d.complete=function(){n.isFunction(d.old)&&d.old.call(this),d.queue&&n.dequeue(this,d.queue)},d},n.fn.extend({fadeTo:function(a,b,c,d){return this.filter(V).css("opacity",0).show().end().animate({opacity:b},a,c,d)},animate:function(a,b,c,d){var e=n.isEmptyObject(a),f=n.speed(b,c,d),g=function(){var b=lc(this,n.extend({},a),f);(e||n._data(this,"finish"))&&b.stop(!0)};return g.finish=g,e||f.queue===!1?this.each(g):this.queue(f.queue,g)},stop:function(a,b,c){var d=function(a){var b=a.stop;delete a.stop,b(c)};return"string"!=typeof a&&(c=b,b=a,a=void 0),b&&a!==!1&&this.queue(a||"fx",[]),this.each(function(){var b=!0,e=null!=a&&a+"queueHooks",f=n.timers,g=n._data(this);if(e)g[e]&&g[e].stop&&d(g[e]);else for(e in g)g[e]&&g[e].stop&&dc.test(e)&&d(g[e]);for(e=f.length;e--;)f[e].elem!==this||null!=a&&f[e].queue!==a||(f[e].anim.stop(c),b=!1,f.splice(e,1));(b||!c)&&n.dequeue(this,a)})},finish:function(a){return a!==!1&&(a=a||"fx"),this.each(function(){var b,c=n._data(this),d=c[a+"queue"],e=c[a+"queueHooks"],f=n.timers,g=d?d.length:0;for(c.finish=!0,n.queue(this,a,[]),e&&e.stop&&e.stop.call(this,!0),b=f.length;b--;)f[b].elem===this&&f[b].queue===a&&(f[b].anim.stop(!0),f.splice(b,1));for(b=0;g>b;b++)d[b]&&d[b].finish&&d[b].finish.call(this);delete c.finish})}}),n.each(["toggle","show","hide"],function(a,b){var c=n.fn[b];n.fn[b]=function(a,d,e){return null==a||"boolean"==typeof a?c.apply(this,arguments):this.animate(hc(b,!0),a,d,e)}}),n.each({slideDown:hc("show"),slideUp:hc("hide"),slideToggle:hc("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(a,b){n.fn[a]=function(a,c,d){return this.animate(b,a,c,d)}}),n.timers=[],n.fx.tick=function(){var a,b=n.timers,c=0;for(_b=n.now();c<b.length;c++)a=b[c],a()||b[c]!==a||b.splice(c--,1);b.length||n.fx.stop(),_b=void 0},n.fx.timer=function(a){n.timers.push(a),a()?n.fx.start():n.timers.pop()},n.fx.interval=13,n.fx.start=function(){ac||(ac=setInterval(n.fx.tick,n.fx.interval))},n.fx.stop=function(){clearInterval(ac),ac=null},n.fx.speeds={slow:600,fast:200,_default:400},n.fn.delay=function(a,b){return a=n.fx?n.fx.speeds[a]||a:a,b=b||"fx",this.queue(b,function(b,c){var d=setTimeout(b,a);c.stop=function(){clearTimeout(d)}})},function(){var a,b,c,d,e=z.createElement("div");e.setAttribute("className","t"),e.innerHTML="  <link/><table></table><a href='/a'>a</a><input type='checkbox'/>",a=e.getElementsByTagName("a")[0],c=z.createElement("select"),d=c.appendChild(z.createElement("option")),b=e.getElementsByTagName("input")[0],a.style.cssText="top:1px",l.getSetAttribute="t"!==e.className,l.style=/top/.test(a.getAttribute("style")),l.hrefNormalized="/a"===a.getAttribute("href"),l.checkOn=!!b.value,l.optSelected=d.selected,l.enctype=!!z.createElement("form").enctype,c.disabled=!0,l.optDisabled=!d.disabled,b=z.createElement("input"),b.setAttribute("value",""),l.input=""===b.getAttribute("value"),b.value="t",b.setAttribute("type","radio"),l.radioValue="t"===b.value,a=b=c=d=e=null}();var mc=/\r/g;n.fn.extend({val:function(a){var b,c,d,e=this[0];{if(arguments.length)return d=n.isFunction(a),this.each(function(c){var e;1===this.nodeType&&(e=d?a.call(this,c,n(this).val()):a,null==e?e="":"number"==typeof e?e+="":n.isArray(e)&&(e=n.map(e,function(a){return null==a?"":a+""})),b=n.valHooks[this.type]||n.valHooks[this.nodeName.toLowerCase()],b&&"set"in b&&void 0!==b.set(this,e,"value")||(this.value=e))});if(e)return b=n.valHooks[e.type]||n.valHooks[e.nodeName.toLowerCase()],b&&"get"in b&&void 0!==(c=b.get(e,"value"))?c:(c=e.value,"string"==typeof c?c.replace(mc,""):null==c?"":c)}}}),n.extend({valHooks:{option:{get:function(a){var b=n.find.attr(a,"value");return null!=b?b:n.text(a)}},select:{get:function(a){for(var b,c,d=a.options,e=a.selectedIndex,f="select-one"===a.type||0>e,g=f?null:[],h=f?e+1:d.length,i=0>e?h:f?e:0;h>i;i++)if(c=d[i],!(!c.selected&&i!==e||(l.optDisabled?c.disabled:null!==c.getAttribute("disabled"))||c.parentNode.disabled&&n.nodeName(c.parentNode,"optgroup"))){if(b=n(c).val(),f)return b;g.push(b)}return g},set:function(a,b){var c,d,e=a.options,f=n.makeArray(b),g=e.length;while(g--)if(d=e[g],n.inArray(n.valHooks.option.get(d),f)>=0)try{d.selected=c=!0}catch(h){d.scrollHeight}else d.selected=!1;return c||(a.selectedIndex=-1),e}}}}),n.each(["radio","checkbox"],function(){n.valHooks[this]={set:function(a,b){return n.isArray(b)?a.checked=n.inArray(n(a).val(),b)>=0:void 0}},l.checkOn||(n.valHooks[this].get=function(a){return null===a.getAttribute("value")?"on":a.value})});var nc,oc,pc=n.expr.attrHandle,qc=/^(?:checked|selected)$/i,rc=l.getSetAttribute,sc=l.input;n.fn.extend({attr:function(a,b){return W(this,n.attr,a,b,arguments.length>1)},removeAttr:function(a){return this.each(function(){n.removeAttr(this,a)})}}),n.extend({attr:function(a,b,c){var d,e,f=a.nodeType;if(a&&3!==f&&8!==f&&2!==f)return typeof a.getAttribute===L?n.prop(a,b,c):(1===f&&n.isXMLDoc(a)||(b=b.toLowerCase(),d=n.attrHooks[b]||(n.expr.match.bool.test(b)?oc:nc)),void 0===c?d&&"get"in d&&null!==(e=d.get(a,b))?e:(e=n.find.attr(a,b),null==e?void 0:e):null!==c?d&&"set"in d&&void 0!==(e=d.set(a,c,b))?e:(a.setAttribute(b,c+""),c):void n.removeAttr(a,b))},removeAttr:function(a,b){var c,d,e=0,f=b&&b.match(F);if(f&&1===a.nodeType)while(c=f[e++])d=n.propFix[c]||c,n.expr.match.bool.test(c)?sc&&rc||!qc.test(c)?a[d]=!1:a[n.camelCase("default-"+c)]=a[d]=!1:n.attr(a,c,""),a.removeAttribute(rc?c:d)},attrHooks:{type:{set:function(a,b){if(!l.radioValue&&"radio"===b&&n.nodeName(a,"input")){var c=a.value;return a.setAttribute("type",b),c&&(a.value=c),b}}}}}),oc={set:function(a,b,c){return b===!1?n.removeAttr(a,c):sc&&rc||!qc.test(c)?a.setAttribute(!rc&&n.propFix[c]||c,c):a[n.camelCase("default-"+c)]=a[c]=!0,c}},n.each(n.expr.match.bool.source.match(/\w+/g),function(a,b){var c=pc[b]||n.find.attr;pc[b]=sc&&rc||!qc.test(b)?function(a,b,d){var e,f;return d||(f=pc[b],pc[b]=e,e=null!=c(a,b,d)?b.toLowerCase():null,pc[b]=f),e}:function(a,b,c){return c?void 0:a[n.camelCase("default-"+b)]?b.toLowerCase():null}}),sc&&rc||(n.attrHooks.value={set:function(a,b,c){return n.nodeName(a,"input")?void(a.defaultValue=b):nc&&nc.set(a,b,c)}}),rc||(nc={set:function(a,b,c){var d=a.getAttributeNode(c);return d||a.setAttributeNode(d=a.ownerDocument.createAttribute(c)),d.value=b+="","value"===c||b===a.getAttribute(c)?b:void 0}},pc.id=pc.name=pc.coords=function(a,b,c){var d;return c?void 0:(d=a.getAttributeNode(b))&&""!==d.value?d.value:null},n.valHooks.button={get:function(a,b){var c=a.getAttributeNode(b);return c&&c.specified?c.value:void 0},set:nc.set},n.attrHooks.contenteditable={set:function(a,b,c){nc.set(a,""===b?!1:b,c)}},n.each(["width","height"],function(a,b){n.attrHooks[b]={set:function(a,c){return""===c?(a.setAttribute(b,"auto"),c):void 0}}})),l.style||(n.attrHooks.style={get:function(a){return a.style.cssText||void 0},set:function(a,b){return a.style.cssText=b+""}});var tc=/^(?:input|select|textarea|button|object)$/i,uc=/^(?:a|area)$/i;n.fn.extend({prop:function(a,b){return W(this,n.prop,a,b,arguments.length>1)},removeProp:function(a){return a=n.propFix[a]||a,this.each(function(){try{this[a]=void 0,delete this[a]}catch(b){}})}}),n.extend({propFix:{"for":"htmlFor","class":"className"},prop:function(a,b,c){var d,e,f,g=a.nodeType;if(a&&3!==g&&8!==g&&2!==g)return f=1!==g||!n.isXMLDoc(a),f&&(b=n.propFix[b]||b,e=n.propHooks[b]),void 0!==c?e&&"set"in e&&void 0!==(d=e.set(a,c,b))?d:a[b]=c:e&&"get"in e&&null!==(d=e.get(a,b))?d:a[b]},propHooks:{tabIndex:{get:function(a){var b=n.find.attr(a,"tabindex");return b?parseInt(b,10):tc.test(a.nodeName)||uc.test(a.nodeName)&&a.href?0:-1}}}}),l.hrefNormalized||n.each(["href","src"],function(a,b){n.propHooks[b]={get:function(a){return a.getAttribute(b,4)}}}),l.optSelected||(n.propHooks.selected={get:function(a){var b=a.parentNode;return b&&(b.selectedIndex,b.parentNode&&b.parentNode.selectedIndex),null}}),n.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){n.propFix[this.toLowerCase()]=this}),l.enctype||(n.propFix.enctype="encoding");var vc=/[\t\r\n\f]/g;n.fn.extend({addClass:function(a){var b,c,d,e,f,g,h=0,i=this.length,j="string"==typeof a&&a;if(n.isFunction(a))return this.each(function(b){n(this).addClass(a.call(this,b,this.className))});if(j)for(b=(a||"").match(F)||[];i>h;h++)if(c=this[h],d=1===c.nodeType&&(c.className?(" "+c.className+" ").replace(vc," "):" ")){f=0;while(e=b[f++])d.indexOf(" "+e+" ")<0&&(d+=e+" ");g=n.trim(d),c.className!==g&&(c.className=g)}return this},removeClass:function(a){var b,c,d,e,f,g,h=0,i=this.length,j=0===arguments.length||"string"==typeof a&&a;if(n.isFunction(a))return this.each(function(b){n(this).removeClass(a.call(this,b,this.className))});if(j)for(b=(a||"").match(F)||[];i>h;h++)if(c=this[h],d=1===c.nodeType&&(c.className?(" "+c.className+" ").replace(vc," "):"")){f=0;while(e=b[f++])while(d.indexOf(" "+e+" ")>=0)d=d.replace(" "+e+" "," ");g=a?n.trim(d):"",c.className!==g&&(c.className=g)}return this},toggleClass:function(a,b){var c=typeof a;return"boolean"==typeof b&&"string"===c?b?this.addClass(a):this.removeClass(a):this.each(n.isFunction(a)?function(c){n(this).toggleClass(a.call(this,c,this.className,b),b)}:function(){if("string"===c){var b,d=0,e=n(this),f=a.match(F)||[];while(b=f[d++])e.hasClass(b)?e.removeClass(b):e.addClass(b)}else(c===L||"boolean"===c)&&(this.className&&n._data(this,"__className__",this.className),this.className=this.className||a===!1?"":n._data(this,"__className__")||"")})},hasClass:function(a){for(var b=" "+a+" ",c=0,d=this.length;d>c;c++)if(1===this[c].nodeType&&(" "+this[c].className+" ").replace(vc," ").indexOf(b)>=0)return!0;return!1}}),n.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "),function(a,b){n.fn[b]=function(a,c){return arguments.length>0?this.on(b,null,a,c):this.trigger(b)}}),n.fn.extend({hover:function(a,b){return this.mouseenter(a).mouseleave(b||a)},bind:function(a,b,c){return this.on(a,null,b,c)},unbind:function(a,b){return this.off(a,null,b)},delegate:function(a,b,c,d){return this.on(b,a,c,d)},undelegate:function(a,b,c){return 1===arguments.length?this.off(a,"**"):this.off(b,a||"**",c)}});var wc=n.now(),xc=/\?/,yc=/(,)|(\[|{)|(}|])|"(?:[^"\\\r\n]|\\["\\\/bfnrt]|\\u[\da-fA-F]{4})*"\s*:?|true|false|null|-?(?!0\d)\d+(?:\.\d+|)(?:[eE][+-]?\d+|)/g;n.parseJSON=function(b){if(a.JSON&&a.JSON.parse)return a.JSON.parse(b+"");var c,d=null,e=n.trim(b+"");return e&&!n.trim(e.replace(yc,function(a,b,e,f){return c&&b&&(d=0),0===d?a:(c=e||b,d+=!f-!e,"")}))?Function("return "+e)():n.error("Invalid JSON: "+b)},n.parseXML=function(b){var c,d;if(!b||"string"!=typeof b)return null;try{a.DOMParser?(d=new DOMParser,c=d.parseFromString(b,"text/xml")):(c=new ActiveXObject("Microsoft.XMLDOM"),c.async="false",c.loadXML(b))}catch(e){c=void 0}return c&&c.documentElement&&!c.getElementsByTagName("parsererror").length||n.error("Invalid XML: "+b),c};var zc,Ac,Bc=/#.*$/,Cc=/([?&])_=[^&]*/,Dc=/^(.*?):[ \t]*([^\r\n]*)\r?$/gm,Ec=/^(?:about|app|app-storage|.+-extension|file|res|widget):$/,Fc=/^(?:GET|HEAD)$/,Gc=/^\/\//,Hc=/^([\w.+-]+:)(?:\/\/(?:[^\/?#]*@|)([^\/?#:]*)(?::(\d+)|)|)/,Ic={},Jc={},Kc="*/".concat("*");try{Ac=location.href}catch(Lc){Ac=z.createElement("a"),Ac.href="",Ac=Ac.href}zc=Hc.exec(Ac.toLowerCase())||[];function Mc(a){return function(b,c){"string"!=typeof b&&(c=b,b="*");var d,e=0,f=b.toLowerCase().match(F)||[];if(n.isFunction(c))while(d=f[e++])"+"===d.charAt(0)?(d=d.slice(1)||"*",(a[d]=a[d]||[]).unshift(c)):(a[d]=a[d]||[]).push(c)}}function Nc(a,b,c,d){var e={},f=a===Jc;function g(h){var i;return e[h]=!0,n.each(a[h]||[],function(a,h){var j=h(b,c,d);return"string"!=typeof j||f||e[j]?f?!(i=j):void 0:(b.dataTypes.unshift(j),g(j),!1)}),i}return g(b.dataTypes[0])||!e["*"]&&g("*")}function Oc(a,b){var c,d,e=n.ajaxSettings.flatOptions||{};for(d in b)void 0!==b[d]&&((e[d]?a:c||(c={}))[d]=b[d]);return c&&n.extend(!0,a,c),a}function Pc(a,b,c){var d,e,f,g,h=a.contents,i=a.dataTypes;while("*"===i[0])i.shift(),void 0===e&&(e=a.mimeType||b.getResponseHeader("Content-Type"));if(e)for(g in h)if(h[g]&&h[g].test(e)){i.unshift(g);break}if(i[0]in c)f=i[0];else{for(g in c){if(!i[0]||a.converters[g+" "+i[0]]){f=g;break}d||(d=g)}f=f||d}return f?(f!==i[0]&&i.unshift(f),c[f]):void 0}function Qc(a,b,c,d){var e,f,g,h,i,j={},k=a.dataTypes.slice();if(k[1])for(g in a.converters)j[g.toLowerCase()]=a.converters[g];f=k.shift();while(f)if(a.responseFields[f]&&(c[a.responseFields[f]]=b),!i&&d&&a.dataFilter&&(b=a.dataFilter(b,a.dataType)),i=f,f=k.shift())if("*"===f)f=i;else if("*"!==i&&i!==f){if(g=j[i+" "+f]||j["* "+f],!g)for(e in j)if(h=e.split(" "),h[1]===f&&(g=j[i+" "+h[0]]||j["* "+h[0]])){g===!0?g=j[e]:j[e]!==!0&&(f=h[0],k.unshift(h[1]));break}if(g!==!0)if(g&&a["throws"])b=g(b);else try{b=g(b)}catch(l){return{state:"parsererror",error:g?l:"No conversion from "+i+" to "+f}}}return{state:"success",data:b}}n.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:Ac,type:"GET",isLocal:Ec.test(zc[1]),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":Kc,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/xml/,html:/html/,json:/json/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":n.parseJSON,"text xml":n.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(a,b){return b?Oc(Oc(a,n.ajaxSettings),b):Oc(n.ajaxSettings,a)},ajaxPrefilter:Mc(Ic),ajaxTransport:Mc(Jc),ajax:function(a,b){"object"==typeof a&&(b=a,a=void 0),b=b||{};var c,d,e,f,g,h,i,j,k=n.ajaxSetup({},b),l=k.context||k,m=k.context&&(l.nodeType||l.jquery)?n(l):n.event,o=n.Deferred(),p=n.Callbacks("once memory"),q=k.statusCode||{},r={},s={},t=0,u="canceled",v={readyState:0,getResponseHeader:function(a){var b;if(2===t){if(!j){j={};while(b=Dc.exec(f))j[b[1].toLowerCase()]=b[2]}b=j[a.toLowerCase()]}return null==b?null:b},getAllResponseHeaders:function(){return 2===t?f:null},setRequestHeader:function(a,b){var c=a.toLowerCase();return t||(a=s[c]=s[c]||a,r[a]=b),this},overrideMimeType:function(a){return t||(k.mimeType=a),this},statusCode:function(a){var b;if(a)if(2>t)for(b in a)q[b]=[q[b],a[b]];else v.always(a[v.status]);return this},abort:function(a){var b=a||u;return i&&i.abort(b),x(0,b),this}};if(o.promise(v).complete=p.add,v.success=v.done,v.error=v.fail,k.url=((a||k.url||Ac)+"").replace(Bc,"").replace(Gc,zc[1]+"//"),k.type=b.method||b.type||k.method||k.type,k.dataTypes=n.trim(k.dataType||"*").toLowerCase().match(F)||[""],null==k.crossDomain&&(c=Hc.exec(k.url.toLowerCase()),k.crossDomain=!(!c||c[1]===zc[1]&&c[2]===zc[2]&&(c[3]||("http:"===c[1]?"80":"443"))===(zc[3]||("http:"===zc[1]?"80":"443")))),k.data&&k.processData&&"string"!=typeof k.data&&(k.data=n.param(k.data,k.traditional)),Nc(Ic,k,b,v),2===t)return v;h=k.global,h&&0===n.active++&&n.event.trigger("ajaxStart"),k.type=k.type.toUpperCase(),k.hasContent=!Fc.test(k.type),e=k.url,k.hasContent||(k.data&&(e=k.url+=(xc.test(e)?"&":"?")+k.data,delete k.data),k.cache===!1&&(k.url=Cc.test(e)?e.replace(Cc,"$1_="+wc++):e+(xc.test(e)?"&":"?")+"_="+wc++)),k.ifModified&&(n.lastModified[e]&&v.setRequestHeader("If-Modified-Since",n.lastModified[e]),n.etag[e]&&v.setRequestHeader("If-None-Match",n.etag[e])),(k.data&&k.hasContent&&k.contentType!==!1||b.contentType)&&v.setRequestHeader("Content-Type",k.contentType),v.setRequestHeader("Accept",k.dataTypes[0]&&k.accepts[k.dataTypes[0]]?k.accepts[k.dataTypes[0]]+("*"!==k.dataTypes[0]?", "+Kc+"; q=0.01":""):k.accepts["*"]);for(d in k.headers)v.setRequestHeader(d,k.headers[d]);if(k.beforeSend&&(k.beforeSend.call(l,v,k)===!1||2===t))return v.abort();u="abort";for(d in{success:1,error:1,complete:1})v[d](k[d]);if(i=Nc(Jc,k,b,v)){v.readyState=1,h&&m.trigger("ajaxSend",[v,k]),k.async&&k.timeout>0&&(g=setTimeout(function(){v.abort("timeout")},k.timeout));try{t=1,i.send(r,x)}catch(w){if(!(2>t))throw w;x(-1,w)}}else x(-1,"No Transport");function x(a,b,c,d){var j,r,s,u,w,x=b;2!==t&&(t=2,g&&clearTimeout(g),i=void 0,f=d||"",v.readyState=a>0?4:0,j=a>=200&&300>a||304===a,c&&(u=Pc(k,v,c)),u=Qc(k,u,v,j),j?(k.ifModified&&(w=v.getResponseHeader("Last-Modified"),w&&(n.lastModified[e]=w),w=v.getResponseHeader("etag"),w&&(n.etag[e]=w)),204===a||"HEAD"===k.type?x="nocontent":304===a?x="notmodified":(x=u.state,r=u.data,s=u.error,j=!s)):(s=x,(a||!x)&&(x="error",0>a&&(a=0))),v.status=a,v.statusText=(b||x)+"",j?o.resolveWith(l,[r,x,v]):o.rejectWith(l,[v,x,s]),v.statusCode(q),q=void 0,h&&m.trigger(j?"ajaxSuccess":"ajaxError",[v,k,j?r:s]),p.fireWith(l,[v,x]),h&&(m.trigger("ajaxComplete",[v,k]),--n.active||n.event.trigger("ajaxStop")))}return v},getJSON:function(a,b,c){return n.get(a,b,c,"json")},getScript:function(a,b){return n.get(a,void 0,b,"script")}}),n.each(["get","post"],function(a,b){n[b]=function(a,c,d,e){return n.isFunction(c)&&(e=e||d,d=c,c=void 0),n.ajax({url:a,type:b,dataType:e,data:c,success:d})}}),n.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(a,b){n.fn[b]=function(a){return this.on(b,a)}}),n._evalUrl=function(a){return n.ajax({url:a,type:"GET",dataType:"script",async:!1,global:!1,"throws":!0})},n.fn.extend({wrapAll:function(a){if(n.isFunction(a))return this.each(function(b){n(this).wrapAll(a.call(this,b))});if(this[0]){var b=n(a,this[0].ownerDocument).eq(0).clone(!0);this[0].parentNode&&b.insertBefore(this[0]),b.map(function(){var a=this;while(a.firstChild&&1===a.firstChild.nodeType)a=a.firstChild;return a}).append(this)}return this},wrapInner:function(a){return this.each(n.isFunction(a)?function(b){n(this).wrapInner(a.call(this,b))}:function(){var b=n(this),c=b.contents();c.length?c.wrapAll(a):b.append(a)})},wrap:function(a){var b=n.isFunction(a);return this.each(function(c){n(this).wrapAll(b?a.call(this,c):a)})},unwrap:function(){return this.parent().each(function(){n.nodeName(this,"body")||n(this).replaceWith(this.childNodes)}).end()}}),n.expr.filters.hidden=function(a){return a.offsetWidth<=0&&a.offsetHeight<=0||!l.reliableHiddenOffsets()&&"none"===(a.style&&a.style.display||n.css(a,"display"))},n.expr.filters.visible=function(a){return!n.expr.filters.hidden(a)};var Rc=/%20/g,Sc=/\[\]$/,Tc=/\r?\n/g,Uc=/^(?:submit|button|image|reset|file)$/i,Vc=/^(?:input|select|textarea|keygen)/i;function Wc(a,b,c,d){var e;if(n.isArray(b))n.each(b,function(b,e){c||Sc.test(a)?d(a,e):Wc(a+"["+("object"==typeof e?b:"")+"]",e,c,d)});else if(c||"object"!==n.type(b))d(a,b);else for(e in b)Wc(a+"["+e+"]",b[e],c,d)}n.param=function(a,b){var c,d=[],e=function(a,b){b=n.isFunction(b)?b():null==b?"":b,d[d.length]=encodeURIComponent(a)+"="+encodeURIComponent(b)};if(void 0===b&&(b=n.ajaxSettings&&n.ajaxSettings.traditional),n.isArray(a)||a.jquery&&!n.isPlainObject(a))n.each(a,function(){e(this.name,this.value)});else for(c in a)Wc(c,a[c],b,e);return d.join("&").replace(Rc,"+")},n.fn.extend({serialize:function(){return n.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var a=n.prop(this,"elements");return a?n.makeArray(a):this}).filter(function(){var a=this.type;return this.name&&!n(this).is(":disabled")&&Vc.test(this.nodeName)&&!Uc.test(a)&&(this.checked||!X.test(a))}).map(function(a,b){var c=n(this).val();return null==c?null:n.isArray(c)?n.map(c,function(a){return{name:b.name,value:a.replace(Tc,"\r\n")}}):{name:b.name,value:c.replace(Tc,"\r\n")}}).get()}}),n.ajaxSettings.xhr=void 0!==a.ActiveXObject?function(){return!this.isLocal&&/^(get|post|head|put|delete|options)$/i.test(this.type)&&$c()||_c()}:$c;var Xc=0,Yc={},Zc=n.ajaxSettings.xhr();a.ActiveXObject&&n(a).on("unload",function(){for(var a in Yc)Yc[a](void 0,!0)}),l.cors=!!Zc&&"withCredentials"in Zc,Zc=l.ajax=!!Zc,Zc&&n.ajaxTransport(function(a){if(!a.crossDomain||l.cors){var b;return{send:function(c,d){var e,f=a.xhr(),g=++Xc;if(f.open(a.type,a.url,a.async,a.username,a.password),a.xhrFields)for(e in a.xhrFields)f[e]=a.xhrFields[e];a.mimeType&&f.overrideMimeType&&f.overrideMimeType(a.mimeType),a.crossDomain||c["X-Requested-With"]||(c["X-Requested-With"]="XMLHttpRequest");for(e in c)void 0!==c[e]&&f.setRequestHeader(e,c[e]+"");f.send(a.hasContent&&a.data||null),b=function(c,e){var h,i,j;if(b&&(e||4===f.readyState))if(delete Yc[g],b=void 0,f.onreadystatechange=n.noop,e)4!==f.readyState&&f.abort();else{j={},h=f.status,"string"==typeof f.responseText&&(j.text=f.responseText);try{i=f.statusText}catch(k){i=""}h||!a.isLocal||a.crossDomain?1223===h&&(h=204):h=j.text?200:404}j&&d(h,i,j,f.getAllResponseHeaders())},a.async?4===f.readyState?setTimeout(b):f.onreadystatechange=Yc[g]=b:b()},abort:function(){b&&b(void 0,!0)}}}});function $c(){try{return new a.XMLHttpRequest}catch(b){}}function _c(){try{return new a.ActiveXObject("Microsoft.XMLHTTP")}catch(b){}}n.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/(?:java|ecma)script/},converters:{"text script":function(a){return n.globalEval(a),a}}}),n.ajaxPrefilter("script",function(a){void 0===a.cache&&(a.cache=!1),a.crossDomain&&(a.type="GET",a.global=!1)}),n.ajaxTransport("script",function(a){if(a.crossDomain){var b,c=z.head||n("head")[0]||z.documentElement;return{send:function(d,e){b=z.createElement("script"),b.async=!0,a.scriptCharset&&(b.charset=a.scriptCharset),b.src=a.url,b.onload=b.onreadystatechange=function(a,c){(c||!b.readyState||/loaded|complete/.test(b.readyState))&&(b.onload=b.onreadystatechange=null,b.parentNode&&b.parentNode.removeChild(b),b=null,c||e(200,"success"))},c.insertBefore(b,c.firstChild)},abort:function(){b&&b.onload(void 0,!0)}}}});var ad=[],bd=/(=)\?(?=&|$)|\?\?/;n.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var a=ad.pop()||n.expando+"_"+wc++;return this[a]=!0,a}}),n.ajaxPrefilter("json jsonp",function(b,c,d){var e,f,g,h=b.jsonp!==!1&&(bd.test(b.url)?"url":"string"==typeof b.data&&!(b.contentType||"").indexOf("application/x-www-form-urlencoded")&&bd.test(b.data)&&"data");return h||"jsonp"===b.dataTypes[0]?(e=b.jsonpCallback=n.isFunction(b.jsonpCallback)?b.jsonpCallback():b.jsonpCallback,h?b[h]=b[h].replace(bd,"$1"+e):b.jsonp!==!1&&(b.url+=(xc.test(b.url)?"&":"?")+b.jsonp+"="+e),b.converters["script json"]=function(){return g||n.error(e+" was not called"),g[0]},b.dataTypes[0]="json",f=a[e],a[e]=function(){g=arguments},d.always(function(){a[e]=f,b[e]&&(b.jsonpCallback=c.jsonpCallback,ad.push(e)),g&&n.isFunction(f)&&f(g[0]),g=f=void 0}),"script"):void 0}),n.parseHTML=function(a,b,c){if(!a||"string"!=typeof a)return null;"boolean"==typeof b&&(c=b,b=!1),b=b||z;var d=v.exec(a),e=!c&&[];return d?[b.createElement(d[1])]:(d=n.buildFragment([a],b,e),e&&e.length&&n(e).remove(),n.merge([],d.childNodes))};var cd=n.fn.load;n.fn.load=function(a,b,c){if("string"!=typeof a&&cd)return cd.apply(this,arguments);var d,e,f,g=this,h=a.indexOf(" ");return h>=0&&(d=a.slice(h,a.length),a=a.slice(0,h)),n.isFunction(b)?(c=b,b=void 0):b&&"object"==typeof b&&(f="POST"),g.length>0&&n.ajax({url:a,type:f,dataType:"html",data:b}).done(function(a){e=arguments,g.html(d?n("<div>").append(n.parseHTML(a)).find(d):a)}).complete(c&&function(a,b){g.each(c,e||[a.responseText,b,a])}),this},n.expr.filters.animated=function(a){return n.grep(n.timers,function(b){return a===b.elem}).length};var dd=a.document.documentElement;function ed(a){return n.isWindow(a)?a:9===a.nodeType?a.defaultView||a.parentWindow:!1}n.offset={setOffset:function(a,b,c){var d,e,f,g,h,i,j,k=n.css(a,"position"),l=n(a),m={};"static"===k&&(a.style.position="relative"),h=l.offset(),f=n.css(a,"top"),i=n.css(a,"left"),j=("absolute"===k||"fixed"===k)&&n.inArray("auto",[f,i])>-1,j?(d=l.position(),g=d.top,e=d.left):(g=parseFloat(f)||0,e=parseFloat(i)||0),n.isFunction(b)&&(b=b.call(a,c,h)),null!=b.top&&(m.top=b.top-h.top+g),null!=b.left&&(m.left=b.left-h.left+e),"using"in b?b.using.call(a,m):l.css(m)}},n.fn.extend({offset:function(a){if(arguments.length)return void 0===a?this:this.each(function(b){n.offset.setOffset(this,a,b)});var b,c,d={top:0,left:0},e=this[0],f=e&&e.ownerDocument;if(f)return b=f.documentElement,n.contains(b,e)?(typeof e.getBoundingClientRect!==L&&(d=e.getBoundingClientRect()),c=ed(f),{top:d.top+(c.pageYOffset||b.scrollTop)-(b.clientTop||0),left:d.left+(c.pageXOffset||b.scrollLeft)-(b.clientLeft||0)}):d},position:function(){if(this[0]){var a,b,c={top:0,left:0},d=this[0];return"fixed"===n.css(d,"position")?b=d.getBoundingClientRect():(a=this.offsetParent(),b=this.offset(),n.nodeName(a[0],"html")||(c=a.offset()),c.top+=n.css(a[0],"borderTopWidth",!0),c.left+=n.css(a[0],"borderLeftWidth",!0)),{top:b.top-c.top-n.css(d,"marginTop",!0),left:b.left-c.left-n.css(d,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var a=this.offsetParent||dd;while(a&&!n.nodeName(a,"html")&&"static"===n.css(a,"position"))a=a.offsetParent;return a||dd})}}),n.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(a,b){var c=/Y/.test(b);n.fn[a]=function(d){return W(this,function(a,d,e){var f=ed(a);return void 0===e?f?b in f?f[b]:f.document.documentElement[d]:a[d]:void(f?f.scrollTo(c?n(f).scrollLeft():e,c?e:n(f).scrollTop()):a[d]=e)},a,d,arguments.length,null)}}),n.each(["top","left"],function(a,b){n.cssHooks[b]=Mb(l.pixelPosition,function(a,c){return c?(c=Kb(a,b),Ib.test(c)?n(a).position()[b]+"px":c):void 0})}),n.each({Height:"height",Width:"width"},function(a,b){n.each({padding:"inner"+a,content:b,"":"outer"+a},function(c,d){n.fn[d]=function(d,e){var f=arguments.length&&(c||"boolean"!=typeof d),g=c||(d===!0||e===!0?"margin":"border");return W(this,function(b,c,d){var e;return n.isWindow(b)?b.document.documentElement["client"+a]:9===b.nodeType?(e=b.documentElement,Math.max(b.body["scroll"+a],e["scroll"+a],b.body["offset"+a],e["offset"+a],e["client"+a])):void 0===d?n.css(b,c,g):n.style(b,c,d,g)},b,f?d:void 0,f,null)}})}),n.fn.size=function(){return this.length},n.fn.andSelf=n.fn.addBack,"function"==typeof define&&define.amd&&define("jquery",[],function(){return n});var fd=a.jQuery,gd=a.$;return n.noConflict=function(b){return a.$===n&&(a.$=gd),b&&a.jQuery===n&&(a.jQuery=fd),n},typeof b===L&&(a.jQuery=a.$=n),n});
//Cookie
(function(e){typeof define=="function"&&define.amd?define(["jquery"],e):e(jQuery)})(function(e){function n(e){return u.raw?e:encodeURIComponent(e)}function r(e){return u.raw?e:decodeURIComponent(e)}function i(e){return n(u.json?JSON.stringify(e):String(e))}function s(e){e.indexOf('"')===0&&(e=e.slice(1,-1).replace(/\\"/g,'"').replace(/\\\\/g,"\\"));try{return e=decodeURIComponent(e.replace(t," ")),u.json?JSON.parse(e):e}catch(n){}}function o(t,n){var r=u.raw?t:s(t);return e.isFunction(n)?n(r):r}var t=/\+/g,u=e.cookie=function(t,s,a){if(s!==undefined&&!e.isFunction(s)){a=e.extend({},u.defaults,a);if(typeof a.expires=="number"){var f=a.expires,l=a.expires=new Date;l.setTime(+l+f*864e5)}return document.cookie=[n(t),"=",i(s),a.expires?"; expires="+a.expires.toUTCString():"",a.path?"; path="+a.path:"",a.domain?"; domain="+a.domain:"",a.secure?"; secure":""].join("")}var c=t?undefined:{},h=document.cookie?document.cookie.split("; "):[];for(var p=0,d=h.length;p<d;p++){var v=h[p].split("="),m=r(v.shift()),g=v.join("=");if(t&&t===m){c=o(g,s);break}!t&&(g=o(g))!==undefined&&(c[m]=g)}return c};u.defaults={},e.removeCookie=function(t,n){return e.cookie(t)===undefined?!1:(e.cookie(t,"",e.extend({},n,{expires:-1})),!e.cookie(t))}});
//TMPL
(function(a){var r=a.fn.domManip,d="_tmplitem",q=/^[^<]*(<[\w\W]+>)[^>]*$|\{\{\! /,b={},f={},e,p={key:0,data:{}},i=0,c=0,l=[];function g(g,d,h,e){var c={data:e||(e===0||e===false)?e:d?d.data:{},_wrap:d?d._wrap:null,tmpl:null,parent:d||null,nodes:[],calls:u,nest:w,wrap:x,html:v,update:t};g&&a.extend(c,g,{nodes:[],parent:d});if(h){c.tmpl=h;c._ctnt=c._ctnt||c.tmpl(a,c);c.key=++i;(l.length?f:b)[i]=c}return c}a.each({appendTo:"append",prependTo:"prepend",htm:"html"},function(f,d){a.fn[f]=function(n){var g=[],i=a(n),k,h,m,l,j=this.length===1&&this[0].parentNode;e=b||{};if(j&&j.nodeType===11&&j.childNodes.length===1&&i.length===1){i[d](this[0]);g=this}else{for(h=0,m=i.length;h<m;h++){c=h;k=(h>0?this.clone(true):this).get();a(i[h])[d](k);g=g.concat(k)}c=0;g=this.pushStack(g,f,i.selector)}l=e;e=null;a.tmpl.complete(l);return g}});a.fn.extend({tmpl:function(d,c,b){return a.tmpl(this[0],d,c,b)},tmplItem:function(){return a.tmplItem(this[0])},template:function(b){return a.template(b,this[0])},domManip:function(d,m,k){if(d[0]&&a.isArray(d[0])){var g=a.makeArray(arguments),h=d[0],j=h.length,i=0,f;while(i<j&&!(f=a.data(h[i++],"tmplItem")));if(f&&c)g[2]=function(b){a.tmpl.afterManip(this,b,k)};r.apply(this,g)}else r.apply(this,arguments);c=0;!e&&a.tmpl.complete(b);return this}});a.extend({tmpl:function(d,h,e,c){var i,k=!c;if(k){c=p;d=a.template[d]||a.template(null,d);f={}}else if(!d){d=c.tmpl;b[c.key]=c;c.nodes=[];c.wrapped&&n(c,c.wrapped);return a(j(c,null,c.tmpl(a,c)))}if(!d)return[];if(typeof h==="function")h=h.call(c||{});e&&e.wrapped&&n(e,e.wrapped);i=a.isArray(h)?a.map(h,function(a){return a?g(e,c,d,a):null}):[g(e,c,d,h)];return k?a(j(c,null,i)):i},tmplItem:function(b){var c;if(b instanceof a)b=b[0];while(b&&b.nodeType===1&&!(c=a.data(b,"tmplItem"))&&(b=b.parentNode));return c||p},template:function(c,b){if(b){if(typeof b==="string")b=o(b);else if(b instanceof a)b=b[0]||{};if(b.nodeType)b=a.data(b,"tmpl")||a.data(b,"tmpl",o(b.innerHTML));return typeof c==="string"?(a.template[c]=b):b}return c?typeof c!=="string"?a.template(null,c):a.template[c]||a.template(null,q.test(c)?c:a(c)):null},encode:function(a){return(""+a).split("<").join("&lt;").split(">").join("&gt;").split('"').join("&#34;").split("'").join("&#39;")}});a.extend(a.tmpl,{tag:{tmpl:{_default:{$2:"null"},open:"if($notnull_1){__=__.concat($item.nest($1,$2));}"},wrap:{_default:{$2:"null"},open:"$item.calls(__,$1,$2);__=[];",close:"call=$item.calls();__=call._.concat($item.wrap(call,__));"},each:{_default:{$2:"$index, $value"},open:"if($notnull_1){$.each($1a,function($2){with(this){",close:"}});}"},"if":{open:"if(($notnull_1) && $1a){",close:"}"},"else":{_default:{$1:"true"},open:"}else if(($notnull_1) && $1a){"},html:{open:"if($notnull_1){__.push($1a);}"},"=":{_default:{$1:"$data"},open:"if($notnull_1){__.push($.encode($1a));}"},"!":{open:""}},complete:function(){b={}},afterManip:function(f,b,d){var e=b.nodeType===11?a.makeArray(b.childNodes):b.nodeType===1?[b]:[];d.call(f,b);m(e);c++}});function j(e,g,f){var b,c=f?a.map(f,function(a){return typeof a==="string"?e.key?a.replace(/(<\w+)(?=[\s>])(?![^>]*_tmplitem)([^>]*)/g,"$1 "+d+'="'+e.key+'" $2'):a:j(a,e,a._ctnt)}):e;if(g)return c;c=c.join("");c.replace(/^\s*([^<\s][^<]*)?(<[\w\W]+>)([^>]*[^>\s])?\s*$/,function(f,c,e,d){b=a(e).get();m(b);if(c)b=k(c).concat(b);if(d)b=b.concat(k(d))});return b?b:k(c)}function k(c){var b=document.createElement("div");b.innerHTML=c;return a.makeArray(b.childNodes)}function o(b){return new Function("jQuery","$item","var $=jQuery,call,__=[],$data=$item.data;with($data){__.push('"+a.trim(b).replace(/([\\'])/g,"\\$1").replace(/[\r\t\n]/g," ").replace(/\$\{([^\}]*)\}/g,"{{= $1}}").replace(/\{\{(\/?)(\w+|.)(?:\(((?:[^\}]|\}(?!\}))*?)?\))?(?:\s+(.*?)?)?(\(((?:[^\}]|\}(?!\}))*?)\))?\s*\}\}/g,function(m,l,k,g,b,c,d){var j=a.tmpl.tag[k],i,e,f;if(!j)throw"Unknown template tag: "+k;i=j._default||[];if(c&&!/\w$/.test(b)){b+=c;c=""}if(b){b=h(b);d=d?","+h(d)+")":c?")":"";e=c?b.indexOf(".")>-1?b+h(c):"("+b+").call($item"+d:b;f=c?e:"(typeof("+b+")==='function'?("+b+").call($item):("+b+"))"}else f=e=i.$1||"null";g=h(g);return"');"+j[l?"close":"open"].split("$notnull_1").join(b?"typeof("+b+")!=='undefined' && ("+b+")!=null":"true").split("$1a").join(f).split("$1").join(e).split("$2").join(g||i.$2||"")+"__.push('"})+"');}return __;")}function n(c,b){c._wrap=j(c,true,a.isArray(b)?b:[q.test(b)?b:a(b).html()]).join("")}function h(a){return a?a.replace(/\\'/g,"'").replace(/\\\\/g,"\\"):null}function s(b){var a=document.createElement("div");a.appendChild(b.cloneNode(true));return a.innerHTML}function m(o){var n="_"+c,k,j,l={},e,p,h;for(e=0,p=o.length;e<p;e++){if((k=o[e]).nodeType!==1)continue;j=k.getElementsByTagName("*");for(h=j.length-1;h>=0;h--)m(j[h]);m(k)}function m(j){var p,h=j,k,e,m;if(m=j.getAttribute(d)){while(h.parentNode&&(h=h.parentNode).nodeType===1&&!(p=h.getAttribute(d)));if(p!==m){h=h.parentNode?h.nodeType===11?0:h.getAttribute(d)||0:0;if(!(e=b[m])){e=f[m];e=g(e,b[h]||f[h]);e.key=++i;b[i]=e}c&&o(m)}j.removeAttribute(d)}else if(c&&(e=a.data(j,"tmplItem"))){o(e.key);b[e.key]=e;h=a.data(j.parentNode,"tmplItem");h=h?h.key:0}if(e){k=e;while(k&&k.key!=h){k.nodes.push(j);k=k.parent}delete e._ctnt;delete e._wrap;a.data(j,"tmplItem",e)}function o(a){a=a+n;e=l[a]=l[a]||g(e,b[e.parent.key+n]||e.parent)}}}function u(a,d,c,b){if(!a)return l.pop();l.push({_:a,tmpl:d,item:this,data:c,options:b})}function w(d,c,b){return a.tmpl(a.template(d),c,b,this)}function x(b,d){var c=b.options||{};c.wrapped=d;return a.tmpl(a.template(b.tmpl),b.data,c,b.item)}function v(d,c){var b=this._wrap;return a.map(a(a.isArray(b)?b.join(""):b).filter(d||"*"),function(a){return c?a.innerText||a.textContent:a.outerHTML||s(a)})}function t(){var b=this.nodes;a.tmpl(null,null,null,this).insertBefore(b[0]);a(b).remove()}})(jQuery);
//GET
(function($){$.request=function(name){var reg=new RegExp("(^|&)"+name+"=([^&]*)(&|$)");var r=window.location.search.substr(1).match(reg);if(r!=null)return unescape(r[2]);return null;}})(jQuery);
//全局
COIN = {ltc:["莱特币"],sak:["鲨鱼币"],vtc:["绿币"],ifc:["无限币"],tfc:["传送币"],btc:["比特币"],drk:["达世币"],blk:["黑币"],vrc:["维理币"],jbc:["聚宝币"],doge:["狗币"],zcc:["招财币"],xpm:["质数币"],ppc:["点点币"],wdc:["世界币"],max:["最大币"],zet:["泽塔币"],eac:["地球币"],fz:["冰河币"],dnc:["暗网币"],xrp:["瑞波币"],nxt:["未来币"],gooc:["谷壳币"],plc:["保罗币"],mtc:["猴宝币"],qec:["企鹅币"]};
COINSTOP = {btc:{},drk:{}};
var BYBY = 0;
var inputLen = 6;
CONF = {coin:typeof COIN[$.request('coin')] == 'undefined'?'ltc':$.request('coin')};
FINANCE=IS_LOGIN=GO_URL=0;
//Fuck Float
FF={
	add: function(a,b){return (Math.round(a*1000000)+Math.round(b*1000000))/1000000},
	mul: function(a,b){return (Math.round(a*1000000)*Math.round(b*1000000))/1000000/1000000}
};
//AJAX
AJAX = {
	rd: function(){return Math.random()},
	//时间戳
	fncDT: function(d,nt){
		if(!d) return '刚刚';
		var time = new Date((parseInt(d)+28800)*1000);
        var ymd = time.getUTCFullYear() + "/" + (time.getUTCMonth()+1) + "/" + time.getUTCDate() + ' ';
		if(nt) return ymd;
        return ymd + time.getUTCHours() + ":" + (time.getUTCMinutes()<10?'0':'') + time.getUTCMinutes();
	},
	//挂单状态
	fncTrade: function(s){
		var status = ['状态', '等待', '未成交', '已撤销', '全部成交'];
		return s? status[s]: status;
	},
	//刷新验证码
	captcha: function(id){
		if(typeof id == 'undefined') id = 'captcha';
		$('#img-'+id).attr('src', '/index/index/captcha/?t='+Math.random());
	},
	//登录超时
	ltcb: function(d){
        if(typeof(d)=='string'){
            try{
                d=eval('(' + d + ')');
            }catch (e){
            }
        }
		if('LT'== d.msg){
			USER='';
			FINANCE=0;
			return AJAX.loginpop('登录超时，请重新登录');
		}
		return 1;
	},
	//分页
	pages: function (d, id) {
		var o = document.getElementById('page-'+id);
		if(!o) return;
		this.page = parseInt(d.page);
		this.pagemax = parseInt(d.pagemax);
		if(this.pagemax == 0){
			o.innerHTML = '';
			return;
		}
		this.id = id;
		var prevPage = this.page - 1, nextPage = this.page + 1;
		if (prevPage < 1) {
			var strHtml = '<span class="pre">上一页</span>';
		} else {
			var strHtml = '<a onclick="AJAX.'+id+'('+prevPage+');" class="pre">上一页</a>';
		}
		if (this.page != 1) strHtml += '<a onclick="AJAX.'+id+'(1);">1</a>';
		if (this.page >= 5) strHtml += '<span>...</span>';
		var endPage = this.pagemax > this.page + 2 ? this.page + 2 : this.pagemax;
		for (var i = this.page - 2; i <= endPage; i++)if (i > 0) {
			if (i == this.page) {
				strHtml += '<a class="active">' + i + '</a>';
			} else if (i != 1 && i != this.pagemax) {
				strHtml += '<a onclick="AJAX.'+id+'(' + i + ');">' + i + '</a>';
			}
		}
		if (this.page + 3 < this.pagemax) strHtml += '<span>...</span>';
		if (this.page != this.pagemax) strHtml += '<a onclick="AJAX.'+id+'(' + this.pagemax + ');">' + this.pagemax + '</a>';
		if (nextPage > this.pagemax) {
			strHtml += '<span class="next">下一页</span>';
		} else {
			strHtml += '<a onclick="AJAX.'+id+'(' + nextPage + ');" class="next">下一页</a>';
		}
		o.innerHTML = strHtml;
	},
	//资金
	finance: function(ufmenu){
		if(!USER)return AJAX.loginpop();
		if(FINANCE){
			if(ufmenu) AJAX.ufmenu(); AJAX.finance_cb();
		} else {
			FINANCE=1;
			$.get('/ajax/user/finance', function(d){
				var f=parseFloat(d.data[CONF.coin+'_rate']);
				$("#form-buy").children().eq(0).children().eq(7).html('<p>手续费：</p>'+(f*100)+'%');
				$("#form-sell").children().eq(0).children().eq(7).html('<p>手续费：</p>'+(f*100)+'%');
				if(!AJAX.ltcb(d))return;
				FINANCE=d;
				if(ufmenu)AJAX.ufmenu();
				AJAX.finance_cb();
				AJAX.alertdrk();
			}, 'json');
		}
	},
	//资金 > 回调函数
	finance_cb: function(){},
    finance_coin: function(css,cb,msg){
        if(!USER) return AJAX.loginpop();
        if(typeof ALLCOIN == 'object' && ALLCOIN){
            finance_ob(css,cb,msg);
        }else{
            AJAX.allcoin(function(d){
                ALLCOIN = d;
                finance_ob(css,cb,msg);
            })
        }
    },
	//用户资金 > 菜单
	ufmenu: function(usercoin){
		if(!FINANCE) return AJAX.finance(1);
		if('undefined' == typeof ufmenu){
			ufmenu = 1;
			var html = '<div class="mywallet_list"><div class="clear"><ul class="balance_list"><h4>可用余额</h4>';
			for(var i in usercoin) html += '<li><a href="/coin/'+i+'/"><em style="margin-top: 5px;" class="deal_list_pic_'+i+'"></em><strong>'+usercoin[i][0]+'：</strong><span>'+ FINANCE.data[i+'_balance'] +'</span></a></li>';
			html += '<li><a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span>'+FINANCE.data['cny_balance']+'</span></a></li></ul><ul class="freeze_list"><h4>委托冻结</h4>';
			for(var i in usercoin) html += '<li><a href="/coin/'+i+'/"><em style="margin-top: 5px;" class="deal_list_pic_'+i+'"></em><strong>'+usercoin[i][0]+'：</strong><span>'+ FINANCE.data[i+'_lock']+'</span></a></li>';
			html += '<li><a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span>'+FINANCE.data['cny_lock']+'</span></a></li></ul></div><div class="mywallet_btn_box"><a href="/finance/cny.html">充值</a><a href="/finance/cnyout.html">提现</a><a href="/finance/coin.html">转入</a><a href="/finance/coinout.html">转出</a><a href="/finance/trades.html">委托管理</a><a href="/finance/order.html">成交查询</a></div></div>';
            $('.mywallet_list').remove();$('#user-finance').append(html).show();
		} else {
			$('.mywallet_list').show();
		}
	},
	//用户登录状态
	user: function(){
		if(USER = $.cookie('USER')){
			USER = USER.split(',');
			AJAX.usercb();AJAX.alert();
			$('#login').html('<dl class="mywallet"><dt id="user-finance"><div class="mywallet_name clear"><a href="/finance/">'+((USER[7] && USER[7] != 0)?'<img height="15" style="vertical-align:middle;margin-right:5px;" src="/images/jubi/vip.png" alt=""/>':'')+USER[1]+'</a><i></i></div></dt><dd>ID：<span>'+USER[0]+'</span></dd><dd><a onclick="AJAX.logout()">退出</a></dd></dl>');
			$('#user-finance').hover(function(){AJAX.ufmenu()},function(){$('.mywallet_list').hide()});
		} else {
			$('#login').html('<div class="orange"><span class="zhuce"><a class="orange" href="/user/reg.html">注册</a></span> | <a href="javascript:;" class="orange" onclick="AJAX.loginpop()">登录</a></div>');
			$('#form-login-i').show();$('#login-bar').hide();AJAX.lmhide('-i');
			if(IS_LOGIN) AJAX.loginpop();
		}
	},
	usercb: function(){},
	//登录窗
	loginpop: function(msg){
		var oDiv=document.getElementById('all_mask') || null;
		var str='';
		if(oDiv==null){
			oDiv=document.createElement('div');
			oDiv2=document.createElement('div');
			oDiv.id='all_mask';
			oDiv.className='all_mask';
			oDiv2.className='all_mask_loginbox';
			str="<div class='login_title pl20'>登录</div>"+
				"<form id='form-login' class='mask_wrap login-fb'>"+
					(msg? "<div class='changepw_warning'><p><i></i><span>"+msg+"</span></p></div>":'')+
					"<div class='login_text zin90'><div class='mask_wrap_title'>邮箱：</div><input id='login-email' name='email' onblur='AJAX.loginga()'><div id='email-err'></div></div>"+
					"<div class='login_text zin80'><div class='mask_wrap_title'>密码：</div><input name='pw' type='password'><div id='pw-err'></div></div>"+
					"<div class='login_text zin70 hide' id='ga-box'><div class='mask_wrap_title'>双重验证码：</div><input name='ga'><div id='ga-err'></div></div>"+
					"<div class='login_text zin60 hide' id='captcha-box'>"+
						"<div class='mask_wrap_title'>验证码：</div>"+
						"<input name='captcha' style='width:80px'>"+
						"<img id='img-login' onclick='AJAX.captcha(\"login\")' style='float:right;height:40px'>"+
						"<div id='captcha-err'></div>"+
					"</div>"+
					"<div class='login_button'><input type='button' value='登录' onclick='AJAX.login()'></div>"+
                "<div class='login-footer wwxwwx' style='border-bottom-left-radius:3px; border-bottom-right-radius:3px;'><a target='_blank' href='/ajax/user/qqlogin/'><img src='/images/jubi/qq2.png' style='vertical-align:text-bottom;padding-right:5px;'>QQ登录</a><span style='color:#ccc;float:right;margin-right:25px;'><a style='font-size:12px;' href='/user/reg.html'>免费注册</a>｜<a href='/forgetpw.html' style='font-size:12px;'>忘记密码</a></span></div>"
				+"</form>"+
				"<div class='mask_wrap_close'></div>";
			oDiv2.innerHTML=str;
			$(oDiv2).css('top',($(window).height()/2)-(265/2)+$(document).scrollTop());
			document.body.appendChild(oDiv);
			document.body.appendChild(oDiv2);
			$('.all_mask').css({'height': $(document).height()});
			AJAX.captcha('login');
			AJAX.lmhide();
		}else{
			$('#all_mask').show();
			$('.all_mask_loginbox').show().css('top',$(document).scrollTop()+($(window).height()/2)-265/2+'px');
		};
		$('.all_mask_loginbox').bind('keyup',function(e){var e=e||event;if(e.keyCode==13)AJAX.login();});
		$('#all_mask').click(AJAX.pophide);
		$('.mask_wrap_close').click(AJAX.pophide);
		return 0;
	},
	pophide:function(){$('.all_mask_loginbox').hide();$('#all_mask').hide();GO_URL=0; if(!USER && IS_LOGIN) top.location.href='/';},
    lmhide:function(ns){ns = ns||'';var lm=['email','pw','ga','captcha'];for(var i in lm) {$('#'+lm[i]+'-err'+ns).attr('class', 'prompt');$('#'+lm[i]+'-err'+ns).hide()}},
	//登录
	login: function(ns){
		ns = ns||'';
        var login_url='/ajax/user/login/';
        if(typeof(qq_openid) != "undefined" && qq_openid){
            login_url=login_url+'?qq_openid='+qq_openid;
        }
		$.post(login_url, $('#form-login'+ns).serialize(), function (d) {
			if(d.status) {
				AJAX.user();
                var lgj = d.data;
				if(GO_URL && !lgj){top.location=GO_URL+'?lj=1';}
                else if(GO_URL){top.location=GO_URL;}
				else {AJAX.hongbao();AJAX.pophide()};
				if(typeof RELOAD != 'undefined') window.location.reload();
            } else {
				AJAX.lmhide(ns);
				$('#'+d.data+'-err'+ns).html(d.msg);
				$('#'+d.data+'-err'+ns).show();
				$('#pwd').css({'box-shadow':'0px 0px 3px #F00','border':'1px solid #F00'});
				AJAX.gashow(ns, d.data=='ga');
			}
		}, 'json');
	},
	gashow: function(ns, show){
		if(show) $('#ga-box'+ns).removeClass('hide').addClass('show');
		else $('#ga-box'+ns).removeClass('show').addClass('hide');
	},
	loginga: function(ns){
		ns = ns||'';
		$.post('/ajax/user/login/', {email:$('#login-email'+ns).val(), showga:1}, function(d){
			AJAX.lmhide(ns);
			if(d.status){
				AJAX.gashow(ns, d.msg);
			} else {
				$('#'+ d.data+'-err'+ns).html(d.msg);
				$('#'+ d.data+'-err'+ns).show();
				$('#login-email-i').css({'box-shadow':'0px 0px 3px #F00','border':'1px solid #F00'});
			}
		}, 'json');
	},
	loginjump: function (url){
		if(USER){
			top.location=url;
		}else{
			AJAX.loginpop();
			GO_URL=url;
		}
	},
	//退出
	logout: function(){
		$.get('/ajax/user/logout/', function(){top.location='/'});
	},
	//修改登录密码
	pw: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/user/pw/', $('#form-pw').serialize(), function (d) {
			if(!AJAX.ltcb(d))return;
			if(d.status) {
				$('#pw-msg').html('您已成功修改登录密码');
			} else {
				$('#pw-msg').html(d.msg);
			}
			$("#pw-msg").fadeOut(200).fadeIn(1000).fadeOut(200).fadeIn(1000).fadeOut(200).fadeIn(1000);
		}, 'json');
	},
	//修改交易密码
	pwtrade: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/user/pwtrade/', $('#form-pwtrade').serialize(), function (d) {
			if(!AJAX.ltcb(d))return;
			tanchu(d);
		}, 'json');
	},
	//实名认证 > 页面
	nahtml: function(){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/user/nameauth/', function(d){
			if(0 < d.indexOf('LT')) return AJAX.ltcb({msg:'LT'});
			$('#form-nameauth').html(d);
		});
	},
	//实名认证 > 保存
	nameauth: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/user/nameauth/', $('#form-nameauth').serialize(), function (d) {
			if(!AJAX.ltcb(d))return;
			if(!d.status) alert(d.msg);
			AJAX.nahtml();
		}, 'json');
	},
	ga: function(){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/user/ga/', function(d){
			if(0 < d.indexOf('LT')) return AJAX.ltcb({msg:'LT'});
			$('#form-ga').html(d);
			change_line_bg('mbphone_btn','dl');
		});
	},
	//GA保存
	gasave: function(opt){
		if(!USER)return AJAX.loginpop();
		if(opt) $('#opt').val(opt);
		$.post('/ajax/user/ga', $('#form-ga').serialize(), function (d) {
			if(!AJAX.ltcb(d))return;
			if(d.status) return AJAX.ga();
			alert(d.msg);
		}, 'json');
	},
	//获取手机验证码
	mobilecode: function(type){
		if(!USER)return AJAX.loginpop();
		var url = '/ajax/user/mobilecode/type/'+type;
		if(!USER[3]) url += '/opt/bind/';
		$.post(url, $('#form-mobilebind').serialize(), function (d) {
			if(!AJAX.ltcb(d))return;
			if(d.status) d.msg = '验证码已经下发，请注意查收';
			// 停止计时
			if(!d.status && d.data == 1){
				if(type == 'sms'){
					clearTimeout(mobiletimer);
					$('.btn-mobile-sms1').show();
					$('#btn-mobile-sms1_1').hide();
				}else{
					clearTimeout(mobiletimer2);
					$('.btn-mobile-tel1').show();
					$('#btn-mobile-tel1_1').hide();
				}
			}
			tanchu(d);
		}, 'json');
	},
	//绑定手机
	mobilebind: function(act){
		if(!USER)return AJAX.loginpop();
		var act = USER[3]? 'mobileunbind': 'mobilebind';
		$.post('/ajax/user/'+act, $('#form-mobilebind').serialize(), function(d) {
			if(!AJAX.ltcb(d))return;
			msgbox(d, 1);
		}, 'json');
	},
	//邮件通知配置
	notifyemail: function(){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/user/notifyemail', function(d){
			if(!AJAX.ltcb(d))return;
			$('#ne-login').attr('checked', 1&d?true:false);
			$('#ne-transfer').attr('checked', 2&d?true:false);
			$('#ne-sms_cnyin').attr('checked', 4&d?true:false);
		});
	},
	//保存邮件通知配置
	notifyemailsave: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/user/notifyemail', $('#form-notifyemail').serialize(), function(){alert('保存成功')});
	},
    //读取交易密码设置
    gettpwdsetting: function(){
        if(!USER)return AJAX.loginpop();
        $.get('/ajax/user/tpwdsetting', function(d){
            if(!AJAX.ltcb(d)) return;
            $('#only').prop('checked', 2&d?true:false);
            $('#every').prop('checked', 1&d?true:false);
            $('#none').prop('checked', 4&d?true:false);
        })
    },
    //保存交易密码设置
    tpwdsetting: function(fn){
        if(!USER)return AJAX.loginpop();
        $.post('/ajax/user/tpwdsetting', $('#tpwdsetting').serialize(), function(d){
            if(!AJAX.ltcb(d)) return;
            if(d.status) {
                alert('设置成功');window.location.reload();
            } else alert(d.msg);
        },'json');
    },
    //保存交易密码设置弹出层
    layertpwd: function(){
        if(!USER)return AJAX.loginpop();
        var html = '<div id="all_mask" class="all_mask"></div><div id="tpwd" class="all_mask_loginbox">' +
            '<div class="login_title pl20">交易密码输入设置</div><form id="tpwdsetting" class="set_verify">' +
            '<ul class="tpwd"><li><label for="only"><input type="radio" id="only" value="2" name="tpwdsetting"> 每次登录只输入一次交易密码 </label></li><li>' +
            '<label for="every"><input type="radio" checked id="every" value="1" name="tpwdsetting"> 每笔交易都输入交易密码</label></li><li><label for="none">' +
            '<input type="radio" id="none" name="tpwdsetting" value="4"> 每次交易都不需要输入交易密码</label></li><li><input type="password" name="pwtrade" placeholder="请输入交易密码" class="text"/>' +
            '</li></ul><div class="save_verify"><input type="button" value="保存" onclick="AJAX.tpwdsetting()" /></div><div class="mask_wrap_close" id="pwd_close"></div></form></div>';
        $('body').append(html);
        $('#tpwd').css('top',($(window).height()/2)-(265/2)+$(document).scrollTop());
        $('.all_mask').css({'height': $(document).height()});
        $('#pwd_close').click(function(){$('#all_mask').remove();$('#tpwd').remove();})
        AJAX.gettpwdsetting();
    },
	//钱包地址
	wallet: function(coin){
		if(!USER)return AJAX.loginpop();
		$('#coin-default').html(COIN[coin][0]+'('+coin.toUpperCase()+')');
        $.get('/ajax/user/wallet/coin/'+coin, function(d){
			if(!AJAX.ltcb(d)) return;
			$('#wallet').html(d);
			AJAX.walletcb(coin,d);
		});
	},
	walletcb: function(coin,d){},
	//AJAX列表
	list: function(p, config, code){
		$.get(config.url+'?p='+p, function(d){
			if(!AJAX.ltcb(d))return;
			if(!d.status) return alert(d.msg);
			if('' == d.data.datas){
				$('#grid-'+config.name).html('<p class="zwjl">暂无记录</p>');
			} else {
				$('#tmpl-'+config.name).tmpl(d.data.datas).htm('#grid-'+config.name);
			}
			AJAX.pages(d.data.page, config.name);
			AJAX.listcb(d);
			if(typeof code != 'undefined')eval(code);
		}, 'json');
	},
	//挂单 > 列表
	opentrades: function(p, c){
		if(!USER)return AJAX.loginpop();
		if(c) CONF.coin = c;
		AJAX.list(1, {url:'/ajax/trade/opentrades/coin/'+CONF.coin, name:'trades'}, "change_line_bg('grid-trades','dl');");
	},
    opentrades_cb: function(d){
		//清理
		if('undefined' != typeof(otTimerId)) clearTimeout(otTimerId);
		//验证(未定义，或小于1，退出)
		if('undefined' == typeof(d.data.intervalTime) || parseInt(d.data.intervalTime) < 1) return;
		otTimerId = setTimeout("AJAX.opentrades()", parseInt(d.data.intervalTime) * 1000);
    },
	listcb: function(d){},
	//RMB转账: 列表
	cny: function(p, t){
		if(!USER)return AJAX.loginpop();
		if(t) cny_type = t;
		AJAX.list(p, {url:'/ajax/transfer/cny/type/'+cny_type+'/status/'+encodeURIComponent($('#cny-status').val()), name:'cny'});
	},
	//快捷支付记录
	fastpaylog: function(p){
		if(!USER)return AJAX.loginpop();
		AJAX.list(p, {url:'/ajax/fastpay/paylog', name:'fastpaylog'});
	},
	//币转账 > 列表
	coin: function(p, coin, type){
		if(!USER)return AJAX.loginpop();
		$('#coinout-coin').val(coin);
		if(coin) config = {url:'/ajax/transfer/coin/coin/'+coin+'/type/'+type, name:'coin'};
		AJAX.list(p, config);
	},
	//转出
	transferout: function(act){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/transfer/'+act, $('#form-'+act).serialize(), function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status) {
				d.msg = '提交成功，我们会尽快为您处理到帐';
				AJAX.transferoutcb(d);
			}
			d.data = '';
			tanchu(d);
		}, 'json');
	},
	//转出提交成功
	transferoutcb: function(){},
	//币转账 > 取消
	transfercancel: function(coin, id){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/transfer/cancel/coin/'+coin+'/id/'+id, function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
				$('#status-'+coin+'-'+id).html('<span class="cancel">已取消</span>');
				$('#opt-'+coin+'-'+id).html('');
			} else {
				alert(d.msg);
			}
		}, 'json');
	},
	//银行卡 > 列表
	acbank: function(){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/user/acbank/', function(d){
			if(!AJAX.ltcb(d))return;
			$('#tmpl-acbank').tmpl(d.msg).htm('#grid-acbank');
		}, 'json');
	},
	//快捷支付银行卡 > 列表
	fastbank: function(){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/fastpay/cardlist', function(d){
			if(!AJAX.ltcb(d))return;
			$('#tmpl-fastbank').tmpl(d.data).htm('#grid-fastbank');
		}, 'json');
	},
	//快捷支付预下单
	prefastpay: function(){
		if(!USER)return AJAX.loginpop();
		tanchu({'status':'1','data':'','msg':"正在尝试进行支付"},'',1);
		$.ajax({
			type : "post",
			url : '/ajax/fastpay/preorder',
			data : $('#form-prefastpay').serialize(),
			async : false,
			dataType : 'json',
			success : function(d){
				//隐藏
				$('.dialog').hide();$('.all_mask').hide();
				if(!AJAX.ltcb(d))return;
				if(d.status){
					$("#form-prefastpay").hide();
					$("#form-fastpay").show();
					$("#orderid").val(d.data.orderid);
					//开始倒计时
					$(".btn-mobile-sms1").hide();
					$('#btn-mobile-sms1_1').show();
					$('#btn-mobile-sms1_1').click();
				}else{
					tanchu(d);
				}
			}
		});
	},
	//快捷支付 支付
	fastpay: function(){
		if(!USER)return AJAX.loginpop();
		tanchu({'status':'1','data':'','msg':"正在尝试进行支付"},'',1);
		$.post('/ajax/fastpay/pay', $('#form-fastpay').serialize(), function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
				tanchu({'status':'1','data':'','msg':"正在支付,请耐心等待10秒"},'',1);
				//2秒请求一次判断是否支付成功，最多请求5次,5次依然不成功视为支付失败
				setTimeout("AJAX.fastpayorderinfo("+ $("#orderid").val() +",0)",2000);
			}else{
				tanchu(d);
			}
		}, 'json');
	},
	fastpayorderinfo: function(orderid,time){
		if(!USER)return AJAX.loginpop();
		if(time++>4){
			tanchu({'status':0,'data':'','msg':"支付超时,请稍后重试"});
			return;
		}
		$.post('/ajax/fastpay/payresult', {'orderid':orderid}, function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
				if(d.data.rspcode == '00'){
					tanchu({'status':'1','data':'','msg':"支付成功"});
					//1秒后跳转到支付页面
					setTimeout("window.location = '/finance/'",1000);
				}else if(d.data.rspcode == '' || d.data.rspcode == '31'){
					setTimeout("AJAX.fastpayorderinfo("+orderid+","+time+")",2000);
				}else{
					tanchu({'status':0,'data':'','msg':d.data.rspmsg});
				}
			}else{
				tanchu(d);
			}
		}, 'json');
	},
	//重发验证码
	fastpayresend: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/fastpay/resend', {'orderid':$("#orderid").val()}, function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
				d.msg = "验证码已发送";
			}
			tanchu(d);
		}, 'json');
	},
	//银行卡 > 删除
	acbankdel: function(id){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/user/acbankdel/id/'+id, function(d){
			if(!AJAX.ltcb(d))return;
			d.status? $('#acbank-'+id).remove(): alert(d.msg);
		}, 'json');
	},
	//银行卡 > 添加
	acbankadd: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/user/acbankadd/', $('#form-acbankadd').serialize(), function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){d.msg = '添加成功';AJAX.acbank()}
			tanchu(d);
		}, 'json');
	},
	fastbankadd: function(){
		if(!USER)return AJAX.loginpop();
		$.post('/ajax/fastpay/addcard/', $('#form-fastbankadd').serialize(), function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
				tanchu({'status':'1','data':'','msg':"正在进行鉴权,请耐心等待10秒"},'',1);
				//2秒请求一次判断是否鉴权成功，最多请求5次,5次依然不成功视为鉴权失败
				setTimeout("AJAX.fastbankinfo("+ d.data.cardid+",0)",2000);
			}else{
				tanchu(d);
			}
		}, 'json');
	},
	fastbankinfo: function(cardid,time){
		if(!USER)return AJAX.loginpop();
		if(time++>4){
			tanchu({'status':0,'data':'','msg':"鉴权超时,请稍后重新添加"});
			return;
		}
		$.post('/ajax/fastpay/cardinfo', {'cardid':cardid}, function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
				if(d.data.rspcode == '00'){
					tanchu({'status':'1','data':'','msg':"鉴权成功"});
					AJAX.fastbank();
					//弹出1秒后自动隐藏掉
					setTimeout("$('.dialog').hide();$('.all_mask').hide();",1000);
					//清空表单
					$("#form-fastbankadd")[0].reset();
				}else if(d.data.rspcode == '' || d.data.rspcode == '31'){
					setTimeout("AJAX.fastbankinfo("+cardid+","+time+")",2000);
				}else{
					tanchu({'status':0,'data':'','msg':d.data.rspmsg});
				}
			}else{
				tanchu(d);
			}
		}, 'json');
	},
	//挂单 > 列表
	trades: function(p, c){
		if(!USER)return AJAX.loginpop();
		if(c) CONF.coin = c;
		var requestUrl = '/ajax/trade/list/coin/'+CONF.coin+'/type/'+$('#trades-type').val()+'/status/'+$('#trades-status').val();
		if(timeStart!==false || timeEnd !==false){
			requestUrl += '/start/'+ (timeStart===false?'0':timeStart) + '/end/' + (timeEnd===false?'0':timeEnd);
		}
		AJAX.list(p, {url:requestUrl, name:'trades'}, "change_line_bg('grid-trades','dl');");
	},
	//挂单 > 添加
	tradeadd: function(type){
		if(!USER)return AJAX.loginpop();
		$('#type-'+type).val(type);
		//验证买入/卖出
		var tNum = $('#'+type+'-number');
		var tPrice = $('#'+type+'-price');
		if(isNaN(tNum.val()) || isNaN(tPrice.val())){
			tm_show(type,{'status':0,'msg':'请填写数字'});
			(isNaN(tPrice.val())?tPrice:tNum).css({'box-shadow':'0px 0px 3px #E55600','border':'1px solid #E55600','color':'#333'});
			return false;
		}
		if(parseFloat(tPrice.val())<0.000001){tm_show(type,{'status':0,'msg':'价格太小，请重试！'});return false;}
		//loading
		var oInput = $('#tm-'+type).next().addClass('loading').val('').attr('onclick','');
		//post
		$.post('/ajax/trade/add/coin/'+CONF.coin, $('#form-'+type).serialize(), function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
                d.msg = '下单成功';
                $('#form-'+type)[0].reset();
				//挂单成功后刷新资产
				FINANCE = false;
				delete ufmenu;
				delete auto_ufmenu;
				AJAX.finance();
            }
			tm_show(type, d);
			//删除loading
			oInput.removeClass('loading').val(type=='buy'?'买入':'卖出');
			oInput.attr('onclick',"AJAX.tradeadd('"+type+"')");
			AJAX.opentrades();
		}, 'json');
	},
	//挂单 > 撤销
	tradecancel: function(coin, id){
		if(!USER)return AJAX.loginpop();
		$.get('/ajax/trade/cancel/coin/'+coin+'/id/'+id, function(d){
			if(!AJAX.ltcb(d))return;
			if(d.status){
                if(typeof RELOAD != 'undefined') window.location.reload();
				$('#status-'+id).html('已撤销');
				$('#opt-'+id).html('');
			} else {
				alert(d.msg);
			}
		}, 'json');
	},
	//成交记录
	order: function(p, c, t){
		if(!USER)return AJAX.loginpop();
		if(c) CONF.coin = c;
		var requestUrl = '/ajax/trade/order/coin/'+CONF.coin+'/type/'+$('#order-type').val()
		if(timeStart!==false || timeEnd !==false){
			requestUrl += '/start/'+ (timeStart===false?'0':timeStart) + '/end/' + (timeEnd===false?'0':timeEnd);
		}
		AJAX.list(p, {url:requestUrl, name:'order'}, "change_line_bg('grid-order','dl');");
	},
	//买卖盘
    alltrade: function(){
        $.get('/coin/'+CONF.coin+'/trades?t='+AJAX.rd(), function(d){
            var sn = 13;
            var buymax = 0
                ,sellmax = 0;
            if (parseInt($.cookie('kline'))) sn = 9;
            var trades = {sell:{html:'', sn:sn}, buy:{html:'', sum:0, sn:sn}, infosell:{html:'',num:''}, infobuy:{html:''}};
            for(var i=trades.sell.sn-1;i>=0;i--){
                if(typeof d.sell[i] != 'undefined')
                    trades.sell.html+= '<dl style="cursor: pointer;" onclick="autotrust(this,'+"'sell'"+')"><dt>卖'+(i+1)+'</dt><dd class="w85 green">'+ d.sell[i][0]+'</dd><dd class="w64">'+ d.sell[i][1]+'</dd><dd class="w62">￥'+ formatfloat(d.sell[i][0] * d.sell[i][1], 4)+'</dd></dl>';

            }
            $('#selllist').html(trades.sell.html);
            for(var i=0;i<trades.buy.sn;i++){
                if(typeof d.buy[i] == 'undefined') continue;
                trades.buy.sum = FF.add(trades.buy.sum, d.buy[i][1]);
                trades.buy.html+= '<dl style="cursor: pointer;" onclick="autotrust(this,'+"'buy'"+')"><dt>买'+(i+1)+'</dt><dd class="w85 red">'+ d.buy[i][0]+'</dd><dd class="w64">'+ d.buy[i][1]+'</dd><dd class="w62">￥'+ formatfloat(d.buy[i][0] * d.buy[i][1], 4)+'</dd></dl>';
            }

            for(var i = 0; i< d.buy.length;i++){
                if(typeof d.buy[i] !='undefined' && typeof d.sell[i] !='undefined'){
                    if(buymax < parseFloat(d.buy[i][1])) buymax = parseFloat(d.buy[i][1]);
                    if(sellmax < parseFloat(d.sell[i][1])) sellmax = parseFloat(d.sell[i][1])
                    trades.infosell.num +='<tr><td>'+(i+1)+'</td></tr>'
                    trades.infobuy.html +='<tr><td><span>'+ numbersplit(formatfloat(d.buy[i][0] * d.buy[i][1], 4))+'</span></td><td><span style="color:#e55600;">'+ d.buy[i][1]+'</span></td> <td> <span>'+d.buy[i][0]+'</span><span data-count='+ d.buy[i][1]+' class="deepbar buy" style="top:'+(i+1)*36+'px;"></span></td>  </tr>'
                    trades.infosell.html +='<tr><td><span>'+d.sell[i][0]+'</span></td><td><span style="color:#690;">'+ d.sell[i][1]+'</span></td> <td ><span>'+ numbersplit(formatfloat(d.sell[i][0] * d.sell[i][1], 4))+'</span><span data-count='+ d.sell[i][1]+' class="deepbar sell" style="top:'+(i+1)*36+'px;"></span></td> </tr>'
                }
            }
            $('#infolist').html(trades.infosell.num)
            $('#infoselllist').html(trades.infosell.html)
            $('#infobuylist').html(trades.infobuy.html)
            $('.infotable .deepbar').each(function(){
                $(this).css({width:$(this).data('count')/($(this).hasClass('buy') ? buymax:sellmax )*100+'%'})
            })
            $('#buylist').addClass('red_color').html(trades.buy.html);
            if(typeof d.buy[0] != 'undefined') {$('#market-buy').html(d.buy[0][0]);$('#sell-nice').html(d.buy[0][0])}
            if(typeof d.sell[0] != 'undefined') {$('#market-sell').html(d.sell[0][0]);$('#buy-nice').html(d.sell[0][0])}
            maxbuy();
            change_line_bg('buylist','dl',true);change_line_bg('selllist','dl',true);
            setTimeout('AJAX.alltrade()', 5000);
        }, 'json');

    },
	//成交记录
    allorder: function(){
        $.get('/coin/'+CONF.coin+'/order?t='+AJAX.rd(), function(d){
            var orders,inforders;
            for(var i=0;i<d.d.length;i++){
                var arr=d.d[i][3] == 'buy'? ['买入','red']:['卖出','green']
                orders+= '<dl><dt>'+ d.d[i][0] +'</dt><dd class="'+ arr[1] +'">'+ arr[0] +'</dd><dd>'+ d.d[i][1] +'</dd><dd>'+ d.d[i][2] +'</dd><dd class="w155">'+formatfloat(FF.mul(d.d[i][2], d.d[i][1]),2) +'</dd></dl>';
                inforders +='<tr><td>'+ d.d[i][0] +'</td><td class="'+(d.d[i][3] == 'buy'? 'red':'green')+'">'+ d.d[i][1] +'</td><td>'+ d.d[i][2] +'</td></tr>'
            }

            $('#orderlist').html(orders.replace("undefined",""));
            $('#turnover').html(inforders)
            var marketprice = 'undefined'==typeof d.d[0]? 0: d.d[0][1];
            $('#market-price').html(marketprice);
            if(typeof FINANCE == 'object') $('.zc-c2c').html('￥'+formatfloat((FINANCE.data[CONF.coin+'_balance']+FINANCE.data[CONF.coin+'_lock'])*marketprice, 2));
            $('#market-max').html(d.max);$('#market-min').html(d.min);$('#market-sum').html(formatCount( d.sum ));
            change_line_bg('orderlist','dl');
            setTimeout('AJAX.allorder()', 5000);
        }, 'json');
    },
    tickertimer: 0,
    allcoin: function(cb){
        $.get('/coin/allcoin?t='+AJAX.rd(), cb?cb:function(d){
            ALLCOIN =d;
            var t = 0;
            priceTmp = [];
            //把json转换为二维数组 进行渲染
            for(var x in d){
                if(typeof(trends[x])!='undefined' && parseFloat(trends[x]['yprice'])>0){
                    rise1=((parseFloat(d[x][1])-parseFloat(trends[x]['yprice']))*100)/parseFloat(trends[x]['yprice']);
                    rise1=rise1.toFixed(2);
                }else{
                    rise1=0;
                }
                d[x].push(rise1);d[x].push(x);priceTmp.push(d[x]);
            }
            //二次排序
            $('.price_today_ull > .click-sort').each(function(){
                var listId = $(this).attr('data-sort');
                if($(this).attr('data-flaglist') == 1 && $(this).attr('data-sort')!==0 ){
                    priceTmp = priceTmp.sort(sortcoinList('dec',listId))
                }else if($(this).attr('data-flaglist') == 2 && $(this).attr('data-sort')!==0){
                    priceTmp = priceTmp.sort(sortcoinList('asc',listId))
                }
            });
            renderPage(priceTmp);
            AJAX.allcoin_callback(priceTmp);
            change_line_bg('price_today_ul','li');
            t = setTimeout('AJAX.allcoin()',5000);

		}, 'json');
	},
    allcoin_callback: function (d){},
    trends: function (){
        $.getJSON('/coin/trends?t='+AJAX.rd(),function (d){
            trends=d;
            AJAX.trends_cb(d);
        });
    },
    trends_cb: function (d){},
	invite: function(p){
		if(!USER)return AJAX.loginpop();
		AJAX.list(p, {url:'/ajax/profit/inviter', name:'invite'});
	},
	profits_detail: function(p){
		if(!USER)return AJAX.loginpop();
		AJAX.list(p,{url:'/ajax/profit/profitrecords',name:'profits_detail'});
	},
	profits_total:function(){
		if(!USER)return AJAX.loginpop();
		$.getJSON('/ajax/profit/total',function(d){
			var html = '';
			for(var i in d.data){
				if(i == 'cny'){
					html+= '<span id="yongjin-zichan" style="margin-top:5px;" class="yongjin-zichan"><span class="tixian" style="top: 0px;"><em class="deal_list_pic_cny"></em><span>人民币：</span>'+ formatfloat(d.data[i],2)+'<a href="/finance/cnyout.html" class="yongjin-tixian">立即提现</a></span></span>';
				} else if (i == 'cny_total') {
					$('#page-cnt').html(formatfloat(d.data[i], 2) + '元');
				}else{
					html+='<span id="yongjin-zichan" style="margin-top:5px;" class="yongjin-zichan"><span class="tixian" style="top: 0px;"><em class="deal_list_pic_'+i+'"></em><span>'+COIN[i]+'：</span>'+ d.data[i]+'<a href="/finance/coinout.html?coin='+i+'" class="yongjin-tixian">立即提现</a></span></span>';
				}
			}
			$('#profit_list').html(html);
		})
	},
	alert: function(){
		if(!USER)return AJAX.loginpop();
		if(typeof INDEX == 'undefined') return;
		$.getJSON('/ajax/profit/alert',function(d){
                if(!d.status){
                    if(!$.cookie('alertmana')){
                    $('body').append('<div class="mana-adv mana-adv-up" style="padding:15px;"><p style="font-family:\'hiragino sans gb\';height:40px;line-height: 30px;">邀请用户赚佣金 <img onclick="hidemana(this);$.cookie(\'alertmana\',1,{expires:7});"  style="float:right;cursor:pointer;" src="/images/jubi/x.png" alt=""/> </p> <p style="font-size:14px;color:#777;">推荐聚币给他人即可获得被推荐人半年内交易手续费的30%作为佣金</p> <a class="common-button" style="padding:8px 20px;border-radius:30px;display: inline-block;margin-left:65px;margin-top:15px;" href="/ajax/profit/activity">马上邀请</a> </div>');}
                }else{
                    if(!$.cookie('alertmana1')){
                    $('body').append('<div class="mana-adv mana-adv-up" style="width:260px;padding:15px;"><p style="font-family:\'hiragino sans gb\';height:40px;line-height: 30px;font-size:17px;">佣金收入 <img onclick="hidemana(this);$.cookie(\'alertmana1\',1,{expires:1});" style="float:right;cursor:pointer;" src="/images/jubi/x.png" alt=""/> </p> <p style="font-size:14px;color:#777;">'+ d.data.date+' <br/>成功邀请：<span style="color:#e55600;">'+ d.data['cnt']+'人</span> <br/>佣金收入折合人民币：<span style="color:#e55600;">'+ d.data['cny_total']+'元</span></p><a class="common-button" style="padding:8px 20px;border-radius:30px;display: inline-block;margin-left:65px;margin-top:15px;" href="/finance/users.html">立即查看</a> </div>');}
            }
		});
	},
	rotatelog:function(p){
		if(!USER)return AJAX.loginpop();
		AJAX.list(p, {url:'/ajax/user/rotatelog', name:'rotatelog'}, "change_line_bg('grid-rotatelog','dl');");
	},
    syncBalance: function (){
        $.get('/ajax/user/sync',function (d){
            if(!AJAX.ltcb(d)) return;
            if(!d.status){
                alert(d.msg);
            }else{
                alert('正在为您同步,请稍后查看余额');
            }
        },'json');
    },
    // 充值卡
    ka:function(p){
        datas = $('#czka').serialize();
        if(p) datas= {};
        $.post('/ajax/transfer/chongzhika', datas, function (d) {
            if(!AJAX.ltcb(d)) return;
            if(p) return $('#token').val(d.msg);
            alert(d.msg);
			if(d.status) AJAX.ka_cb(d);
        },'json');
    },
	ka_cb:function(d){},
    // 充值记录
    chongzhika: function (p) {
        if(!USER)return AJAX.loginpop();
        AJAX.list(p, {url:'/ajax/transfer/kalog', name:'chongzhika'});
    },
    // 下架btc
    alertbtc:function(flag){
        if(!$.cookie('alertbtccookie') || flag){
            if (!FINANCE || FINANCE == 1)return AJAX.finance();
            if ((FINANCE['data']['btc_balance'] < 0.001) && (FINANCE['data']['btc_lock'] < 0.001) && !flag) return false;
        var warinhtml = '', warintwo = '', warinthree = '';
        warinhtml += '<div class="ui-dialog" id="tz-dialog">';
        warinhtml += '<div class="ui-dialog-title" onselectstart="return false">';
        warinhtml += '<span class="dialog-step-1">通知</span><span class="dialog-step-2">转出比特币</span>';
        warinhtml += '<a class="ui-dialog-closebutton" onclick="lcookie()">&times;</a>';
        warinhtml += '</div>';
        warinhtml += '<div class="ui-dialog-content">';
        warinhtml += '<div class="dialog-step-1">为了给用户提供更优质的服务， <em style="color:#e55600;font-style:normal;">自7月1日起</em>，聚币网比特币（BTC）交易业务将全部转至比特币交易网，该平台免收BTC交易手续费并拥有更活跃的市场，聚币网将不再提供比特币买卖、转入服务，若给您带来不便敬请谅解。您可以点击下面按钮将BTC一键转存至比特币交易网。<p  style=" margin: 10px 0; ">若您有挂单冻结的比特币资产，请先撤销挂单后再进行转出操作。 <a style="  color: #e55600;text-decoration: underline;" href="/finance/trades.html">立即去撤单</a></p><p>请您于 <em style="color:#e55600;font-style:normal;">7月15日24：00</em>之前完成BTC的转出操作，衷心感谢您的理解与支持。</p>';
        warinhtml += '<div style="text-align: center;margin:20px 0 10px 0;"><a class="button button-size1 button-radius" onclick="AJAX.check()">转出比特币</a></div>';
        warinhtml += '</div>';
        warinhtml += '<div class="dialog-step-2">';
        warinhtml += '<div><span style="margin-bottom:10px;">可用BTC:<em class="vali"> '+ FINANCE['data']['btc_balance'] + '</em></span><span>冻结BTC:<em class="frozen">' + FINANCE['data']['btc_lock'] + '</em></span></div>';
        warinhtml += '<p id="accountmsg"></p>';
        warinhtml += '<div style="text-align: center;margin:20px 0 20px 0;"><a class="button button-size1 button-radius" id="tradeacc">立即转入BtcTrade账户</a>&nbsp;&nbsp;&nbsp;<a  class="button button-size1 button-radius" style="background-color:#999;border-color:#999;" href="/finance/coinout.html">转出到其他地址</a></div>';
        warinhtml += '</div>';
        warinhtml += '</div>';
        warinhtml += '</div>';
        warintwo += '<div class="ui-dialog" id="tz-dialog2" style="z-index:9001">';
        warintwo += '<div class="ui-dialog-title" onselectstart="return false">';
        warintwo += '<span class="dialog-step-1">通知</span><span class="dialog-step-2">转出比特币</span>';
        warintwo += '<a class="ui-dialog-closebutton" href="javascript:hideDialog(\'tz-dialog2\');">&times;</a>';
        warintwo += '</div>';
        warintwo += '<div class="ui-dialog-content">';
        warintwo += '<div style="text-align:center;padding:35px 0;font-size:16px;"><div style="font-size:20px;color:#690;"><i style="vertical-align: middle;" class="fa fa-2x fa-check"></i> 转出成功</div></span>   ';
        warintwo += '<div style="text-align:center;margin:20px 0 20px 0;"><a href="http://www.btctrade.com" target="_blank" class="button button-size1 button-radius">登录BtcTrade账户查看</a></div>';
        warintwo += '</div>';
        warintwo += '</div>';
        warinthree += '<div class="ui-dialog" id="tz-dialog3">';
        warinthree += '<div class="ui-dialog-title" onselectstart="return false">';
        warinthree += '<span class="dialog-step-1">通知</span><span class="dialog-step-2">转出比特币</span>';
        warinthree += '<a class="ui-dialog-closebutton" href="javascript:hideDialog(\'tz-dialog3\');">&times;</a>';
        warinthree += '</div>';
        warinthree += '<div class="ui-dialog-content">';
        warinthree += '<div style="text-align:center;padding:35px;font-size:16px;"><div style="font-size:20px;color:#690;"><i style="vertical-align: middle;" class="fa fa-2x fa-check"></i> 创建成功</div>你在BtcTrade的账号为 <span style="color:#e55600;"> '+USER[1]+'</span><div>登录密码，交易密码与聚币相同</div></span>   ';
        warinthree += '<div style="text-align:center;margin:20px 0 20px 0;"><a onclick="AJAX.sync_btc()" class="button button-size1 button-radius">立即转入BtcTrade账户</a></div>';
        warinthree += '</div>';
        warinthree += '</div>';
        $('body').append(warinhtml, warintwo,warinthree);
        showDialog('tz-dialog');
        }
    },
	alertdrk: function () {
		if(!$.cookie('alertbtccookie')) {
			if (!FINANCE || FINANCE == 1)return AJAX.finance();
			if ((FINANCE['data']['drk_balance'] < 0.001) && (FINANCE['data']['drk_lock'] < 0.001)) return false;
			var warinhtml = '', warintwo = '', warinthree = '';
			warinhtml += '<div class="ui-dialog" id="tz-drk-dialog">';
			warinhtml += '<div class="ui-dialog-title" onselectstart="return false">';
			warinhtml += '<span class="dialog-step-1" style="color: #ffffff">尊敬的聚币用户:</span><span class="dialog-step-2">转出达世币</span>';
			warinhtml += '<a class="ui-dialog-closebutton" onclick="lcookie()">&times;</a>';
			warinhtml += '</div>';
			warinhtml += '<div class="ui-dialog-content">';
			warinhtml += '<div class="dialog-step-1">您好！由于聚币网达世币长期交易量过低，平台基于对资产安全和用户体验考虑，计划于 <em style="color:#e55600;font-style:normal;">2015年9月17日</em>下线达世币，请相关用户妥善处理在平台的达世币资产。<p  style=" margin: 10px 0; ">若您有挂单冻结的达世币资产，请先撤销挂单后再进行转出操作。 <a style="  color: #e55600;text-decoration: underline;" onclick="lcookie()" href="/finance/trades.html?coin=drk">立即去撤单</a></p><p>请您于 <em style="color:#e55600;font-style:normal;">9月17日24：00</em>之前完成DRK的转出操作，衷心感谢您的理解与支持。</p>';
			warinhtml += '<div style="text-align: center;margin:20px 0 10px 0;"></div>';
			warinhtml += '</div></div></div>';
			$('body').append(warinhtml, warintwo,warinthree);
			showDialog('tz-drk-dialog');
		}

	},
    sync_btc: function () {
        $.post('/ajax/user/sync_btc', {}, function (d) {
            if (d.status) {
                $('#btcnumber').html(d.msg);
                showDialog('tz-dialog2');
                hideDialog('tz-dialog');
                hideDialog('tz-dialog3');
            } else {
                alert(d.msg);
            }
        }, 'json');
    },
    // 是否有trade账号
    check:function(){
        $.getJSON('/ajax/user/check',function(d){
            if(d.msg ==''){
                $('.dialog-step-2').show();
                $('.dialog-step-1').hide();
            }
            if(d.status){
                $('#accountmsg').html('您还没有BtcTrade账户，可一键创建BtcTrade账户');
                $('#tradeacc').html('创建BtcTrade账户');
                $('#tradeacc').on('click', function () {
                    $.post('/ajax/user/createaccount', {}, function (d) {
                        if (d.status) {
                            showDialog('tz-dialog3');
                        }else{
                            alert(d.msg);
                        }
                    }, 'json');
                })
            }else if(d.msg){
                alert(d.msg);
            }
            // 已经有账户
            else{
                $('#accountmsg').html('您在BtcTrade账号为: <em style="font-style: normal;color:#e55600;">'+USER[1]+'</em><br> 您可一键转入BtcTrade账户进行交易');
                $('#tradeacc').on('click', function () {
                    AJAX.sync_btc();
                })
            }
        })
    },
    hongbao: function(){
        $.post("/rotate/draw/rid/6", function(d){
            if(d.status){
                var hongbaoHtml = ""
                hongbaoHtml = '<div class="wawaha" id="wawa">' +
                '<div class="wawaclose" onclick="gg()">&times;</div>'+
                '<div class="evenlop"></div>' +
                '<div class="tiaozi"></div>' +
                '<div class="qianqian"><img src="/images/jubi/profit/qianqian.png" ></div>' +
                '<div class="sankkaku"></div>' +
                '<div class="guangguang" id="guangguang"><img src="/images/jubi/profit/guangguang.png"></div>' +
                '   <div class="kami"   style="font-size:24px;"><span>'+ parseInt(d.data['name'])+' </span>'+ ((d.data['coin'] ==="plc")? "保罗币":"谷壳币")+'</div>'+
                '      <div class="yuan" onclick="location.href=\'/finance/prize.html?lj='+ d.data['coin']+'\'" ><img src="/images/jubi/profit/lingqu.png"></div>' +
                '   </div>'
                $('body').append(hongbaoHtml)
                ppxq();
            }
        }, 'json')

    }

};
// 币种排序
function finance_ob(css, cb, msg) {
    if (typeof FINANCE == 'object') {
        var usercoin = {};
        var maxcoin = [];
        var tmp = [];
        var obsort = [];
        var all_finacne = 0;
        var obcoin = {};
        if (FINANCE) {
            // 排序 按用户币种资产 》 默认
            for (var i in COIN) {
                if ('undefined' == typeof ALLCOIN[i]) ALLCOIN[i] = [0, 0];
                maxcoin[i] = ALLCOIN[i][1] * (parseFloat(FINANCE.data[i + '_balance']) + parseFloat(FINANCE.data[i + '_lock']));
                all_finacne += maxcoin[i];
            }
            for (var j in maxcoin) tmp.push(j);
            obsort = all_finacne ? tmp.sort(function (a, b) {
                return maxcoin[b] - maxcoin[a];
            }) : tmp;
            for (var k = 0; k < obsort.length; k++) {
                obcoin[obsort[k]] = [COIN[obsort[k]]];
            }
            // 用户有资产币种
            for (var c in obsort) {
                if (FINANCE.data[obsort[c] + '_balance'] + FINANCE.data[obsort[c] + '_lock'] > 0) usercoin[obsort[c]] = COIN[obsort[c]];
            }
            if (typeof SHOW_COIN != 'undefined') show_coin_type(usercoin, msg);
            if (typeof auto_ufmenu == 'undefined') {
                AJAX.ufmenu(usercoin);
                auto_ufmenu = 1;
            }
            NavMenu(css ? css : ['nav_po_1', '', '', 2], obcoin);
            if (typeof cb == 'function') cb(ALLCOIN, obcoin);
        }
    }
}
//导航代码
function NavMenu(css,obcoin){
	css=css||[];obcoin = obcoin || COIN; for(var i=0;i<css.length;i++) if('undefined'==typeof css[i]) css[i]='';
	var nav='<div class="nav '+css[1]+'"><ul><li>　　<a href="/" class="">首页</a></li><li><a id="deal_center"><span>交易中心</span> <img src="/images/jubi/down.png" ></a><div class="deal_list '+css[2]+'"><dl>';
    for(var c in obcoin){
        if(typeof COINSTOP[c] == 'object') continue;
        nav+='<dd><a href="/coin/'+c+'/"><i class="deal_list_pic_'+c+'"></i>'+obcoin[c]+'('+c.toUpperCase()+')</a></dd>';
    }
	nav+='</dl><div class="sj"></div><div class="nocontent"></div></div></li><li><a onclick="AJAX.loginjump(\'/finance/\')">财务中心</a></li><li><a onclick="AJAX.loginjump(\'/user/safe.html\')">安全中心</a></li><li><a href="/help/zhuce.html">帮助中心</a></li><li><a target="_blank" href="http://www.btctrade.com/">BtcTrade</a></li></ul></div>';
    if($('#header .nav').length) $('#header .nav').remove();
	$('#header').append(nav);
	$('.nav').addClass(css[0]);
	$('#deal_center').hover(function(){$('.deal_list').show()},function(){$('.deal_list').hide()});
	$('.deal_list').hover(function(){$('.deal_list').show()},function(){$('.deal_list').hide()});
	$('.nav li').eq(css[3]).find('a').eq(0).addClass('active');
}

//隔行变色
function change_bg(id){
	var oCoin_list=$('#'+id);
	var oC_li=oCoin_list.find('li');
	var oInp=oCoin_list.find('input');
	for(var i=0;i<oC_li.length;i++){
		oC_li.eq(i).css('background-color',i%2? '#fff':'#f8f8f8');
		oInp.mouseover(function(){this.style.color='#fff';this.style.backgroundColor='#e55600'});
		oInp.mouseout(function(){this.style.color='#e55600';this.style.background='none'});
	}
}
function change_bg_1(id,tag,col1,col2){
	var oCoin_list=$('#'+id);
	var oC_li=oCoin_list.find(tag);
	for(var i=0;i<oC_li.length;i++) oC_li.eq(i).css('background-color',i%2?col1:col2);
}
//移入行变色
function change_line_bg(id,tag,nobg){
	var oCoin_list=$('#'+id);
	var oC_li=oCoin_list.find(tag);
	var oInp=oCoin_list.find('input');
	var oldCol=null;
	var newCol=null;
    if(!nobg){
        for(var i=0;i<oC_li.length;i++){
            oC_li.eq(i).css('background-color',i%2?'#fff':'#f8f8f8');
            oInp.mouseover(function(){this.style.color='#fff';this.style.backgroundColor='#e55600';});
            oInp.mouseout(function(){this.style.color='#e55600';this.style.background='none';});
        }
    }
	oCoin_list.find(tag).hover(function(){
		oldCol=$(this).css('backgroundColor');
		$(this).css('background-color','#f9f2dd');
	},function(){
		$(this).css('background-color',oldCol);
	})
}
//输入框消息
function formMsg(o, status, msg){
	$('#'+o+'-msg').attr('class', 'form_explain_'+(status?'pass':'error')).html((typeof msg == 'undefined'? '': msg)+'<em></em>').show();
	return status;
}
//页面提示信息
function msgbox(d, fade, id){
	var o = $(id? '#'+id: '#msg-box');
	if(d.status){
		o.attr('class', 'band_succ');
		o.html('<em></em>'+ (d.msg? d.msg: '已成功完成手机绑定'));
	} else {
		o.attr('class', 'changepw_warning');
		o.html('<p><i></i><span>'+ (d.msg? d.msg: '请绑定您的常用手机号，以确保您的帐户安全') +'</span></p>');
	}
	if(fade) o.fadeOut(200).fadeIn(1000).fadeOut(200).fadeIn(1000).fadeOut(200).fadeIn(1000);
}
//用户中心菜单
function usermenu(i, cur){
	var menu = {
		finance: [
			['-'],
			['财务中心','/finance/',0],
			['-'],
			//['人民币快捷支付','/finance/fastpay.html',22],
            ['人民币在线自动充值','/finance/deposit.html',18],
			['人民币银行转账充值','/finance/cny.html',1],
            ['充值卡充值','/finance/deposit_card.html',20],
			['人民币提现','/finance/cnyout.html',2],
			['银行卡管理','/finance/acbank.html',3],
			//['快捷支付银行卡管理','/finance/fastbank.html',23],
			['-'],
			['转入虚拟币','/finance/coin.html',4],
			['转出虚拟币','/finance/coinout.html',5],
			['-'],
			['委托管理','/finance/trades.html',6],
			['成交查询','/finance/order.html',7],
			['-'],
			['聚币经理人','/finance/users.html',16],
			['我的奖品','/finance/prize.html',19],
			['API','/api/secret/keys/',17]
		],
		safe: [
			['-'],
			['安全中心','/user/safe.html',14],
			['实名认证','/user/nameauth.html',8],
			['修改登录密码','/user/pw.html',9],
			['修改交易密码','/user/pwtrade.html',10],
			['设置双重验证','/user/ga.html',11],
			['手机绑定','/user/mobilebind.html',12],
			['邮件通知','/user/notifyemail.html',13],
            ['交易密码输入设置','/user/tpwdsetting.html',15]
		]
	};
	var nav = '';
	for(var c in menu[i]){
		if('-'==menu[i][c]) nav+=(c?'</ul></div>':'')+'<div class="coin_menu_box"><ul>';
		else{
			var conf=cur==menu[i][c][2]?[' class="active"','']:['','_1'];
			nav+='<li'+conf[0]+'><i class="coin_menu_op_'+menu[i][c][2]+conf[1]+'"></i><a href="'+menu[i][c][1]+'">'+menu[i][c][0]+'</a></li>';
		}
	}
	$('.coin_menu').html(nav+'</ul></div>');
	$('.coin_menu_box a').hover(function(){var str=str_1=$(this).parent().find('i').attr('class');if(str.length>15)str=str.substring(0,str.length-2);$(this).parent().find('i').attr('class',str)},function(){$(this).parent().find('i').attr('class',str_1)});
};
//格式化小数
//@f float 传入小数: 123; 1.1234; 1.000001;
//@size int 保留位数
//@add bool 进位: 0舍 1进
function formatfloat(f, size, add){
	f = parseFloat(f);
	var conf = {2:[100, 0.01], 3:[1000, 0.001], 4:[10000, 0.0001], 5:[100000, 0.00001], 6:[1000000, 0.000001]};
	var conf = conf[size];
	var ff = Math.floor(f * conf[0]) / conf[0];
	if(add && f > ff) ff += conf[1];
	if(ff > 0) return ff;
	return 0;
};
//转入虚拟币币种下拉菜单js
function coin_select(){
	$('#coinbox li a').click(function(){$('.bz_btn em').attr('class',$(this).find('em').attr('class'));});
}
//币种下拉菜单JS

function show_coin_type(usercoin,msg){
    var num = 0;var html='';var iBtn=true;
    if($.isEmptyObject(usercoin) && msg) return $('#coin_active').html(msg);
	var defcoin = $.request('coin');
    for(var c in usercoin?usercoin:COIN) {
        if(typeof COINSTOP[c] == 'object' && (typeof DISABLEBTC != 'undefined')) {
            continue;
        }else if(num == 0 && typeof usercb == 'undefined' && usercoin) {
            $('.bz_btn').html('<em class="deal_list_pic_'+(defcoin?defcoin:c)+'"></em><span id="coin-default">'+COIN[c][0]+'</span');
            AJAX.usercb((defcoin?defcoin:c));usercb = 1;
        }
        if(num % 4 == 0) html+='<li>';
        html += '<a onclick="AJAX.usercb(\''+c+'\')"><em class="deal_list_pic_'+c+'"></em><span>'+COIN[c][0]+'('+ c.toUpperCase()+')</span></a>';
        if(++num == 4) html+='</li>';
    }
    $('#coinbox').html(html);
	$('.bizhong_select').click(function(event){if(iBtn){iBtn=!iBtn;$('#coinbox').show();}else{iBtn=!iBtn;$('#coinbox').hide();}event.stopPropagation();});
	$(document).bind('click', function(){$('#coinbox').hide();iBtn=true;});
	coin_select();
};
//弹出提示框JS
function alert_warning(d,btn){
	var iDiv=document.createElement('div');
	var str="";
	var dlink='<a></a>';
	var ostatus= d.status?'<dt class="passstyle">'+ d.msg +'</dt>':'<dt class="nopassstyle">'+ d.msg +'</dt>';
	iDiv.className='dialog';
	iDiv.innerHTML='<dl></dl><div class="dialog_btn"></div><div class="colse_dialog"></div>';
	var dd_str='';
	for(var i=0;i< d.data.length;i++){
		dd_str+='<dd>'+ d.data[i]+'</dd>';
	};
	$('.assets_content').append(iDiv);
	$('.dialog dl').html(ostatus+dd_str);
	if(btn){
		for(var i=0;i<btn.length;i++){
			dlink+='<a href="'+btn[i][1]+'">'+btn[i][0]+'</a>'
		}
		$('.dialog_btn').html(dlink);
	};
	$('.colse_dialog').click(function(){$('.dialog').hide();});
};

function tanchu(d,btn,hideClose){
	if($('#all_mask').length) $('#all_mask').remove();
	if($('#tanchu-dialog').length) $('#tanchu-dialog').remove();
	var thetop =document.documentElement.scrollTop + document.body.scrollTop;
	var oDiv=document.getElementById('all_mask') || null;
	var str='';
	var iDiv=document.createElement('div');
	var dlink='<a></a>';
	var ostatus= d.status?'<dt class="passstyle">'+ (d.msg.length>0?d.msg:'操作成功') +'</dt>':'<dt class="nopassstyle">'+ d.msg +'</dt>';
	iDiv.className='dialog';iDiv.id='tanchu-dialog';
	iDiv.innerHTML='<dl></dl><div class="dialog_btn"></div><div class="colse_dialog"></div>';
	var dd_str='';
	oDiv=document.createElement('div');
	oDiv.id='all_mask';
	oDiv.className='all_mask';
	iDiv.className='dialog';
	iDiv.innerHTML='<dl></dl><div class="dialog_btn"></div><div class="colse_dialog"></div>';
	var dd_str='';
	for(var i=0;i< d.data.length;i++){
		dd_str+='<dd>'+ d.data[i]+'</dd>';
	};
	$(document.body).append(oDiv);
	$(document.body).append(iDiv);
	$('.dialog dl').html(ostatus+dd_str);
	$('.all_mask').css({'height': $(document).height()});
	$('.dialog').css('top',thetop+200);
	if(btn){
		for(var i=0;i<btn.length;i++){
			dlink+='<a href="'+btn[i][1]+'">'+btn[i][0]+'</a>'
		}
		$('.dialog_btn').html(dlink);
	};
	$('.colse_dialog').click(function(){$('.dialog').hide();$('.all_mask').hide();});
	if(hideClose){
		$('.colse_dialog').hide();
	}
}
function gettop(){
	var thetop =document.documentElement.scrollTop + document.body.scrollTop;
	var theh=$('.assets_center').offset().top;
	var thecontenth=$('.assets_content').height();
	var thecoinh=$('.coin_menu').height();
	if(thetop>theh && thetop<theh+thecontenth-thecoinh){
		$('.coin_menu').addClass('fixed_top');
		$('.coin_menu').css('top',-1);
	}else if(thetop<=theh){
		$('.coin_menu').removeClass('fixed_top');
	}else if(thetop>=theh+thecontenth-thecoinh){
		$('.coin_menu').removeClass('fixed_top');
		$('.coin_menu').css('top',thecontenth-thecoinh-1);
	}
};
function price_sroll(){
	var thetop =document.documentElement.scrollTop + document.body.scrollTop;
	var theh=$('#price_today_ul').offset().top+39;
	var lih=($('#price_today_ul li').length-1)*90;
	var thecontenth=($('#price_today_ul li').length-1)*90;
	var thecoinh=39;
	if(thetop>theh && thetop<theh+thecontenth-thecoinh){
		$('.price_today').addClass('fix_top');
		$('.price_today').css('top',0);
		$('.zhanwei').css('height',39);
	}else if(thetop<=theh){
		$('.zhanwei').css('height',0);
		$('.price_today').removeClass('fix_top');
	}else if(thetop>=theh+thecontenth-thecoinh){
		$('.price_today').removeClass('fix_top');
		$('.zhanwei').css('height',0);
	}
}
function inputFB(){
	$('input').focus(function(){
		var t = $(this);
		if(t.attr('type')=='text'||t.attr('type')=='password')t.css({'box-shadow':'0px 0px 3px #1583fb','border':'1px solid #1583fb','color':'#333'});
		if(t.val() == t.attr('placeholder')) t.val('');
	});
	$('input').blur(function(){
		var t = $(this);
		if(t.attr('type')=='text'||t.attr('type')=='password')t.css({'box-shadow':'none','border':'1px solid #e1e1e1','color':'#333'});
		if(t.attr('type')!='password' && !t.val()) t.val(t.attr('placeholder'));
	});
}
$(function(){
	if($('.assets_center').offset()!=null||$('.assets_center').offset()!=undefined){
		gettop();
		$(window).bind('scroll',gettop);
	}
	if($('#price_today_ul').offset() !=null ||$('#price_today_ul').offset()!=undefined){
		$(window).bind('scroll',price_sroll);
	};
	var os = function () {
		var ua = navigator.userAgent,
			isQB = /(?:MQQBrowser|QQ)/.test(ua),
			isWindowsPhone = /(?:Windows Phone)/.test(ua),
			isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,
			isAndroid = /(?:Android)/.test(ua),
			isFireFox = /(?:Firefox)/.test(ua),
			isChrome = /(?:Chrome|CriOS)/.test(ua),
			isIpad = /(?:iPad|PlayBook)/.test(ua),
			isWeixin = /(?:MicroMessenger)/.test(ua),
			isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),
			isSafari = /(?:Safari)/.test(ua),
			isPhone = /(?:iPhone)/.test(ua) && !isTablet,
			isOpen = /(?:Opera Mini)/.test(ua),
			isUC = /(?:UCWEB|UCBrowser)/.test(ua),
			isPc = !isPhone && !isAndroid && !isSymbian && !isIpad
		return {
			isQB: isQB,
			isTablet: isTablet,
			isPhone: isPhone,
			isAndroid: isAndroid,
			isPc: isPc,
			isOpen: isOpen,
			isUC: isUC,
			isIpad: isIpad,
			isWeixin: isWeixin
		};
	}();
	if(os.isPc){
		$('body').append('<div class="sidetool hidden-xs"><ul><li><a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAyNDczN18xNjMyMjVfNDAwNjU3ODg4MF8yXw" target="_blank"><i class="sidetool-item qq"></i></a><span style="cursor:pointer;" onclick="window.open(\'http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAyNDczN18xNjMyMjVfNDAwNjU3ODg4MF8yXw\')">QQ在线客服</span></li><li><a href=""><i class="sidetool-item wechat"></i></a><span class="sqrcode"><img src="/images/jubi/wx-qrcode.png" alt=""><i>聚币网微信公众号</i></span></li><li><a href=""><i class="sidetool-item mobile"></i></a><span class="sqrcode"><img width="100" style="background-color: #fff;" src="/images/jubi/jubi-app.png" alt=""><i>聚币网手机APP下载</i></li><li><a href=""><i class="sidetool-item tel"></i></a><span>400-657-8880</span></li></ul></div>');
	}
    $('.footer_bottom').prepend('<div class="autobox"><span style="display: inline-block;color:#a6a9ab;">CopyRight© 2013-2016聚币网All Rights Reserved. Powered by聚维（北京）科技有限公司 | 工商注册号：110105016727871 &nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">京ICP备14009321号</a><br/>京公网安备11010802018020号  | 地址：北京市海淀区人大北路33号大行基业大厦1411｜<a href="/">jubi.com</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/about/join.html">加入我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/help/api.html">API</a></span> <span style="display: inline-block; color:#a6a9ab"></span><a style="float:right;margin-top:5px;" id=\'___szfw_logo___\' href=\'https://credit.szfw.org/CX20151225013017170181.html\' target=\'_blank\'> <img src=\'http://icon.szfw.org/cert.png\' style="vertical-align:middle;" height="29" border=\'0\' /></a><script type="text/javascript">(function(){document.getElementById("___szfw_logo___").oncontextmenu = function(){return false;}})();</script></div>')
    //底部替换

	$('.dl_menu a').hover(function(){$(this).parent().addClass('want1')},function(){$(this).parent().removeClass('want1')});
	$('.dl_menu a').click(function(){$('.dl_menu a').parent().removeClass('want');$(this).parent().addClass('want');})
	$('.h_underl a').click(function(event){event.stopPropagation();var str='';var str2='';for(var i=0;i<qqgroup.length;i++){str2+='<li>'+qqgroup[i]+'</li>'};str+='<div class="qqserveall"><ul class="clear">'+str2+'</ul><div class="hideqqservice"><a href="javascript:;">点击收起</a></div><div class="sj"></div><div class="nocontent"></div></div>';$('.service_4').html(str);$('.hideqqservice a').click(function(){$('.qqserveall').hide();})})
	$('.mywallet dt').hover(function(){$('.mywallet_list').show()},function(){$('.mywallet_list').hide()});
    $('.phone').html('<span class="iphone" style=""></span><a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAyNDczN18xNjMyMjVfNDAwNjU3ODg4MF8yXw" target="_blank" class="qqkefu"></a>');
	AJAX.user();
	//输入框效果
	inputFB();
});
function AddFavorite(sURL, sTitle){
    try{
        window.external.addFavorite(sURL, sTitle);
    }catch (e){
        try{
            window.sidebar.addPanel(sTitle, sURL, "");
        }catch (e){
            alert("收藏失败，请按ctrl＋D收藏");
        }
    }
}
function regInput(){
	$('.reg_input_box input').each(function(i,d){
		$(d).focus(function(){
			var oRegMsg = $('#'+$(this).attr('id')+'-msg');
			oRegMsg.attr('class')=='form_explain_error'?oRegMsg.attr('class','form_explain').html(oRegMsg.attr('data-explain')).show():oRegMsg.show();
		})
		$(d).blur(function(){
			var oRegMsg = $('#'+$(this).attr('id')+'-msg');
			$(this).parent().find('.form_explain').hide();
		})
	})
}
$(function(){
    var html = '<div class="price-warr">价格与市场价偏差过大，请慎重填写！</div>';
    $('#buy-price,#sell-price').before(html)
	regInput();
    $('body').click(function(){$('.qqserveall').hide()});
    var wait=60;
    function time() {
        var o=document.getElementById("btn-mobile-sms1_1")
        if (wait == -1) {
            $('.btn-mobile-sms1').show();
            $('#btn-mobile-sms1_1').hide();
            wait = 60;
        } else {
            o.innerHTML="(" + wait + ")秒后重新获取";
            wait--;
            mobiletimer = setTimeout(function(){time()}, 1000)
        }
    }
    $('.btn-mobile-sms1').click(function(){
        $(this).hide();
        $('#btn-mobile-sms1_1').show();
        time();
    })
    var wait2=60;
    function time2() {
        var o=document.getElementById("btn-mobile-tel1_1")
        if (wait2 == -1) {
            $('.btn-mobile-tel1').show();
            $('#btn-mobile-tel1_1').hide();
            wait2 = 60;
        } else {
            o.innerHTML="(" + wait2 + ")秒后重新获取";
            wait2--;
			mobiletimer2 = setTimeout(function() {time2()}, 1000)
        }
    }
    $('.btn-mobile-tel1').click(function(){
        $(this).hide();
        $('#btn-mobile-tel1_1').show();
        time2();
    });
})
// 买入/卖出 比例
function slider(){
    var type = ['sell','buy'];
    for(var i in type){
        $("#slider_"+type[i]).slider({
            value: 0,min: 0, max: 100,step: 10,range: "min",slide: function(a, t) {
                var type = $(t.handle).attr('data_slide');
                var e = parseFloat($("#"+type+'-max').text());
                if(isNaN(e)) e=0;
                $("#"+type+' .ui-slider-handle').addClass('ui-state-focus ui-state-active');
                $("#"+type+"-number").val(Math.floor((e / 100 * t.value)*1000)/1000);
                $("#ratio_num_"+type).text(t.value + "%");
            }
        })
    }
}
// 根据委托填价格
function autotrust(_this,type){
    if(type == 'sell'){
        $('#buy-price').val($(_this).children().eq(1).html()).css({
            'color':'#333',
            'font-size':'14px'
        });
    }
    if(type == 'buy'){
        $('#sell-price').val($(_this).children().eq(1).html()).css({
            'color':'#333',
            'fontSize':'14px'
        });
    }
}
//Dom
function Dom(o){return document.getElementById(o);}
//排序函数
function sortcoinList(order, sortBy){
    var ordAlpah = (order == 'asc') ? '>' : '<';
    var sortFun = new Function('a', 'b', 'return parseFloat(a['+sortBy+'])'+ordAlpah + 'parseFloat(b[' + sortBy + '])? 1:-1');
    return sortFun;
}
//渲染函数
function renderPage(ary){
    var html='';
    for(var i in ary){
        var coinfinance = 0;
        if(typeof FINANCE == 'object') coinfinance = parseFloat(FINANCE.data[ary[i][8]+'_balance']);
        html+= '<li><dl class="autobox clear"><dt><i></i><a href="/coin/'+ary[i][8]+'/"><em class="deal_list_pic_'+ary[i][8]+'"></em><p>'+ary[i][0]+'('+ ary[i][8].toUpperCase() +')</p></a></dt><dd class="orange">￥'+ary[i][1]+'</dd><dd>￥'+ary[i][2]+'</dd><dd>￥'+ary[i][3]+'</dd><dd class="w142" title="合人民币：'+formatCount(parseInt((ary[i][6]*ary[i][1])))+'元">'+formatCount(ary[i][6])+'</dd><dd class="w142 '+ (ary[i][7]>=0 ? 'red':'green')+'" style="text-indent:2.8em;color:red">'+(parseFloat(ary[i][7])<0 ? '':'+')+ ((parseFloat(ary[i][7]) < 0.01 && parseFloat(ary[i][7])>-0.01) ?"0.00":ary[i][7])+'%</dd><dd id="'+ary[i][8]+'_plot"  style="width:120px;height:35px;"></dd><dd class="w102" style="text-indent:0em;"><input type="button" value="去交易" onclick="top.location=\'/coin/'+ary[i][8]+'/\'" /></dd></dl></li>'
    }
    $('#price_today_ul').html(html);
}

function click_sortList(sortdata){
    var a = $(sortdata).attr('data-toggle');
    var b = $(sortdata).attr('data-sort');
    $(".price_today_ull > li").find('.cagret-up').css('border-bottom-color','#848484');
    $(".price_today_ull > li").find('.cagret-down').css('border-top-color','#848484');
    $(".price_today_ull > li").attr('data-flaglist',0).attr('data-toggle',0);
    $(".price_today_ull > li").css('color','');
    $(sortdata).css('color','#ff7950');

    if(a == 0){priceTmp = priceTmp.sort(sortcoinList('dec',b));$(sortdata).find('.cagret-down').css('border-top-color','#ff7950');
        $(sortdata).find('.cagret-up').css('border-bottom-color','#848484');$(sortdata).attr('data-flaglist',1).attr('data-toggle',1)
    }
    else if(a == 1)
    {$(sortdata).attr('data-toggle',0).attr('data-flaglist',2);;$(sortdata).find('.cagret-up').css('border-bottom-color','#ff7950');$(sortdata).find('.cagret-down').css('border-top-color','#848484');
        priceTmp = priceTmp.sort(sortcoinList('asc',b));
    }
    renderPage(priceTmp);
    change_line_bg('price_today_ul','li');
    AJAX.allcoin_callback(priceTmp);
}
//隐藏窗口
function hidemana(mana){
    $(mana).parent().parent().removeClass('mana-adv-up').addClass('mana-adv-fall');
}

function showKline(type){
    $.cookie('kline',type);window.location.reload();
}
function hoverAnimate(obj){
    $('.'+ obj).hover(function(){$(this).animate({
        top:'-42px'
    }, 1),1},function(){$(this).animate({
        top:'0px'
    }, 1),1})
}
//弹出层
function showDialog(id,maskclick) {
    // 遮罩
    $('#'+id).removeClass('modal-out').addClass('styled-pane');
    var dialog = Dom(id);
    dialog.style.display = 'block';
    if (Dom('mask') == null) {
        $('body').prepend('<div class="ui-mask" id="mask" onselectstart="return false"></div>');
        if(!maskclick)
            $('#mask').bind('click',function(){hideDialog(id)})
    }
    var mask = Dom('mask');
    mask.style.display = 'inline-block';
    mask.style.width =  document.body.offsetWidth  + 'px';
    mask.style.height = document.body.scrollHeight + 'px';
    //居中
    var bodyW = document.documentElement.clientWidth;
    var bodyH = document.documentElement.clientHeight;
    var elW = dialog.offsetWidth;
    var elH = dialog.offsetHeight;
    dialog.style.left = (bodyW - elW) / 2 + 'px';
    dialog.style.top = (bodyH - elH) / 2 + 'px';
    dialog.style.position = 'fixed';
}
// 关闭弹出框
function hideDialog(id, fn) {
    $('#'+id).removeClass('styled-pane').addClass('modal-out');
    $('#mask').addClass('out');
    setTimeout(function(){$('#'+id).hide();$('#mask').remove();},300);
    if (typeof fn == 'function') fn();
}
function xian(type){
    bprice = $('#buy-price').val();
    bp = $('#buy-nice').text();
    sprice = $('#sell-price').val();
    sp = $('#sell-nice').text();
       type == 1?  price = (bprice-bp)/bp*100:price = (sprice-sp)/sp*100;
        if(Math.abs(price) > 50){
           type == 1 ? bprice !=''?$('#buy-price').prev().fadeIn(1000).delay(3000).fadeOut(400):'':sprice !=''?$('#sell-price').prev().fadeIn(1000).delay(3000).fadeOut(200): '';
        }
}
function vip_ds(){


    var html = '';
    html += '<div class="ui-dialog" id="vipdialog" style="width: 470px;">'
    html +=    '<div class="ui-dialog-title">我的VIP权限 <span style="color:#fff;float:right;cursor: pointer;font-size:24px;"  onclick="hideDialog(\'vipdialog\')">&times;</span></div>'
    html +=    '<div class="ui-dialog-content">亲爱的VIP用户：'
    html +=    '<p>您好！</p>'
    html +=        ' <p>首先感谢您对聚币的长期支持！根据您在聚币充值、交易的状况及活跃程度，祝贺您升级为聚币VIP用户！</p>'
    html +=       ' <p>您的聚币账号将增加<img height="15" style="vertical-align:text-top;margin:0 3px;" src="/images/jubi/vip.png" alt=""/>标识，同时您将享受到以下所有VIP待遇：</p>'
    html +=       ' <ol>'
        html +=            '<li>交易手续费为 <em>0.8‰</em>。</li>'
        html +=            '<li>VIP用户的提现申请将被<em>优先受理</em>。</li>'
        html +=           ' <li>申请成为经理人，邀请新用户可享受<em>35%</em>的交易手续费返佣。</li>'
        html +=            '<li>能<em>优先</em>参与聚币各类活动、评测体验聚币新产品。</li>'
        html +=            '<li>VIP用户在比特币交易网（www.btctrade.com）也有账户，经申请能升级成为<em>比特币交易网VIP用户</em>。（注册邮箱、绑定手机、实名认证信息，这三项信息有一项与聚币账号相同即可）</li>'
        html +=            '<li>VIP用户享有与聚币网相关合作在同等条件下的 <em> 优先权</em>。</li>'
        html +=       '</ol>'
    html +=       ' <p style="margin-top:20px;font-size:13px;color:#666;">感谢您一直以来对聚币网的支持，我们会用优质与专业的服务回馈您对我们的信任。如有疑问请随时咨询客服，电话：400-657-8880</p>'
    html +=   '</div>'
    html += '</div>'

    $('body').prepend(html);
    showDialog('vipdialog');
}
function ppxq(){
    showDialog('wawa');
    var wawa = document.getElementById('wawa');
    wawa.className = 'wawaha styled-pane';
    var guangguang = document.getElementById('guangguang')
    function ss(){
        wawa.className = 'wawaha active styled-pane';
        guangguang.className = 'guangguang  styled-pane';
    }
    setTimeout(ss,500);
}
function gg(){
    hideDialog('wawa');
    hideDialog('lingjiang_info');
    var wawa = document.getElementById('wawa');
    var guangguang = document.getElementById('guangguang')
    wawa.className = 'wawaha';
    guangguang.className = 'guangguang ';


}


function infoDialog(msg,link,type){
	var info = ['icon-caution','icon-caution','icon-error','icon-info','icon-suc']
	var html = '<div id="dialog_alert"  class="dialog-box"><div class="box-title">提示</div><div class="box-inner"><div style="overflow:hidden;" class="info-text"><i style="float:left;" class="'+ (type ?info[type]:info[1])+'"></i><span style="float:left;width:466px;">'+msg+'</span></div></div><div class="box-bottom"><div class="buttons"><a href="#" onclick="return false;" class="action btn btn18 rbtn"><span class="text" onclick="location.href=\''+link+'\'" > 查看奖品</span></a><a href="#" onclick="return false;" class="action btn btn18 rbtn2"><span class="text" onclick="hideDialog(\'dialog_alert\')" > 确定</span></a></div></div><div onclick="hideDialog(\'dialog_alert\')" class="close-btn"><i></i></div></div>';
	if($('#dialog_alert').length<=0){
		$('body').prepend(html)
		showDialog('dialog_alert')
	}
}

//临时写Cookie
function lcookie(){
    $.cookie('alertbtccookie', '1');
    hideDialog('tz-dialog');
	hideDialog('tz-drk-dialog');
}
//小数位数
function vNum(o, len){
    if (isNaN(o.value)) o.value = '';
    var value = len?formatfloat(o.value, len, 0):parseInt(o.value);
    if(badFloat(o.value, len)) o.value = value
}
//坏数字
function badFloat(num, size){
    if(isNaN(num)) return true;
    num += '';
    if(-1 == num.indexOf('.')) return false;
    var f_arr = num.split('.');
    if(f_arr[1].length > size){
        return true;
    }
    return false;
}
//保留2位小鼠
function formatCount(count){
    var countokuu=(count/100000000).toFixed(3)
    var countwan = (count/10000).toFixed(3)
    if(count> 100000000)
        return countokuu.substring(0,countokuu.lastIndexOf('.')+3) + '亿'
    if(count > 10000)
        return countwan.substring(0,countwan.lastIndexOf('.')+3)+'万'
    else
        return count
}

//分割小数点前后数字
function numbersplit(n){
    var number = n.toString()
    var final= number.split('.')[0].toString() + '<i style="font-style:normal;color:#999;">'+ (typeof number.split('.')[1] !='undefined' ? '.'+number.split('.')[1]:' ')+'</i>'
    return final
}



var priceTmp = [];
//用于记录setInterval返回得id 方便停止
var intervalId=null;
//interval 时间间隔 默认是3
var intervalTime;
//用于记录三日趋势数据和昨日价格
var trends;
//记录搜索的开始时间和结束时间
var timeStart = false;
var timeEnd = false;
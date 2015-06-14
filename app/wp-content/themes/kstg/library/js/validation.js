/**
 * Validation
 *
 * Just some simple validation scripts
 *
 * Email Validation Regex: http://emailregex.com/
 */
(function() {

  var validation = {
    /**
     * email
     * @param  {HTMLElement} el the element being checked
     * @return {Boolean} was it valid?
     */
    email : function(el) {
      var emailRegex = /^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i,
          val;

      // make sure we're checking an input field
      if (el.nodeName !== 'INPUT') {
        throw new Error('email validation can only be done on input type elements');
      }

      // get the value of the input
      val = el.value;

      // add a class if email is invalid
      if (emailRegex.test(el.value)) {
        el.classList.remove('error');
        return true;
      } else {
        el.classList.add('error');
        return false;
      }

    }
  };

  // add validation to KSTG object
  if (!window.KSTG) {
    window.KSTG = {};
  }
  window.KSTG.validation = validation;

})();

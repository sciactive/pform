PFORM_LESS = ./less/pform.less
PFORM_BOOTSTRAP_LESS = ./less/pform-bootstrap.less
PFORM_IELT6_LESS = ./less/pform-ie-lt-6.less
PFORM_IELT8_LESS = ./less/pform-ie-lt-8.less


#
# BUILD SIMPLE PFORM FILES
# recess is required
#

build:
	recess --compile ${PFORM_LESS} > css/pform.css
	recess --compress ${PFORM_LESS} > css/pform.min.css
	recess --compile ${PFORM_BOOTSTRAP_LESS} > css/pform-bootstrap.css
	recess --compress ${PFORM_BOOTSTRAP_LESS} > css/pform-bootstrap.min.css
	recess --compile ${PFORM_IELT6_LESS} > css/pform-ie-lt-6.css
	recess --compress ${PFORM_IELT6_LESS} > css/pform-ie-lt-6.min.css
	recess --compile ${PFORM_IELT8_LESS} > css/pform-ie-lt-8.css
	recess --compress ${PFORM_IELT8_LESS} > css/pform-ie-lt-8.min.css

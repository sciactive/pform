Introduction
============

PForm is a CSS form layout library for HTML and XHTML, developed by Hunter Perrin as part of Pines. It is designed to be simple, responsive, cross-browser, semantic, unobtrusive, and standards compliant.

See http://sciactive.com/pform/ for more information and examples.

Getting Started
===============

PForm comes with the following files:

* `pform.css` & `pform.min.css` (Minified) - The main stylesheet.
* `pform-ie-lt-8.css` & `pform-ie-lt-8.min.css` (Minified) - Use this to support Internet Explorer 6 and 7.
* `pform-ie-lt-6.css` & `pform-ie-lt-6.min.css` (Minified) - Use this to support Internet Explorer 5.01 and 5.5.
* `pform-bootstrap.css` & `pform-bootstrap.min.css` (Minified) - Use this if you also use Bootstrap.

So here's how you'd include them all:

	<link href="pform.css" media="all" rel="stylesheet" type="text/css" />
	<!-- Include this file if you are using Bootstrap. -->
	<link href="pform-bootstrap.css" media="all" rel="stylesheet" type="text/css" />
	<!--[if lt IE 8]>
	<link href="pform-ie-lt-8.css" media="all" rel="stylesheet" type="text/css" />
	<![endif]-->
	<!--[if lt IE 6]>
	<link href="pform-ie-lt-6.css" media="all" rel="stylesheet" type="text/css" />
	<![endif]-->

Notice the conditional comments to serve IE the right files. 

Now you can use PForm like this:

	<form class="pf-form" action="#" method="post">
		<div class="pf-element pf-heading">
			<h3>Login</h3>
		</div>
		<div class="pf-element">
			<label><span class="pf-label">Username</span>
				<input class="pf-field" type="text" name="username" /></label>
		</div>
		<div class="pf-element">
			<label><span class="pf-label">Password</span>
				<input class="pf-field" type="password" name="password" /></label>
		</div>
		<div class="pf-element">
			<label><span class="pf-label">Remember Me</span>
				<span class="pf-note">Lasts for 2 weeks.</span>
				<input class="pf-field" type="checkbox" name="remember" /></label>
		</div>
		<div class="pf-element pf-buttons">
			<input class="pf-button" type="submit" name="submit" value="Submit" />
			<input class="pf-button" type="reset" name="reset" value="Reset" />
		</div>
	</form>

Here's the same form, built with a fieldset:

	<form class="pf-form" action="#" method="post">
		<fieldset>
			<legend>Login</legend>
			<div class="pf-element">
				<label><span class="pf-label">Username</span>
					<input class="pf-field" type="text" name="username" /></label>
			</div>
			<div class="pf-element">
				<label><span class="pf-label">Password</span>
					<input class="pf-field" type="password" name="password" /></label>
			</div>
			<div class="pf-element">
				<label><span class="pf-label">Remember Me</span>
					<span class="pf-note">Lasts for 2 weeks.</span>
					<input class="pf-field" type="checkbox" name="remember" /></label>
			</div>
			<div class="pf-element pf-buttons">
				<input class="pf-button" type="submit" name="submit" value="Submit" />
				<input class="pf-button" type="reset" name="reset" value="Reset" />
			</div>
		</fieldset>
	</form>

Features
========

Layouts
-------

PForm has two different layout options, Inline (default) and Block. To use block layout for an entire form, add the `pf-layout-block` class to the `pf-form` element. To use block layout for an individual element, add the `pf-layout-block` class to a `pf-element` element.

Headings
--------

Headings can use any heading element. Actually, they can use any element you want:

	<div class="pf-element pf-heading">
		<h3>Sign Up Now</h3>
		<p>You will receive 200 bonus points just for signing up!</p>
	</div>

Required Asterisk
-----------------

You can include an asterisk to mark something as required with the following:

	<span class="pf-required">*</span>

You can also mark the element as completed (with JavaScript validation) by adding the `pf-completed` class, like so:

	<span class="pf-required pf-completed">*</span>

The best place I've found to put these is right after a label's text, like this:

	<span class="pf-label">Username <span class="pf-required">*</span></span>

You can put the `pf-completed` class on the `pf-element` element instead, to mark any required asterisks in that element as completed.

Field Groups
------------

Sometimes you will need to group fields so they don't fall left below the label. You can do this by wrapping them in a `pf-group` element:

	<div class="pf-element">
		<span class="pf-label">Favorite Food</span>
		<div class="pf-group">
			<label><input class="pf-field" type="radio" name="radiotest" /> Hot Dogs</label><br />
			<label><input class="pf-field" type="radio" name="radiotest" /> Hamburgers</label><br />
			<label><input class="pf-field" type="radio" name="radiotest" /> Cheeseburgers</label><br />
			<label><input class="pf-field" type="radio" name="radiotest" /> Sushi</label><br />
			<label><input class="pf-field" type="radio" name="radiotest" /> Pizza</label><br />
			...
		</div>
	</div>

*Remember that you can use the `pf-group` class on a span instead. This lets you put a group inside a label element and have it validate.*

Fieldset Groups
---------------

Fieldset groups must use the `pf-group` class:

	<fieldset class="pf-group">
		<legend>Household</legend>
		<div class="pf-element">
			<label><span class="pf-label">Household Memebers</span>
				<span class="pf-note">Family members living in your house.</span>
				<input class="pf-field" type="text" name="household" /></label>
		</div>
	</fieldset>

Label Alignment
---------------

Labels can be aligned left (default) or right. To align them, use the `pf-labels-left` and `pf-labels-right` classes. You can put these classes on a `pf-form` element, `pf-group` fieldset, `pf-element` element, or `pf-label` element. You can override an ancestor's alignment class too.

Full Width Elements
-------------------

Elements can be extended to the form's width using the `pf-full-width` class:

	<div class="pf-element pf-full-width">
		<label>
			<span class="pf-label">Comments</span>
			<span class="pf-group">
				<span class="pf-field"><textarea style="width: 100%;" name="comments" rows="5" cols="30"></textarea></span>
			</span>
		</label>
	</div>

Verification Forms
------------------

You can apply a form like layout to verification pages by simply providing no inputs:

	<form class="pf-form" action="#" method="post">
		<fieldset>
			<legend>Verify this Information</legend>
			<div class="pf-element">
				<span class="pf-label">Name</span>
				<span class="pf-field">Jake Sully</span>
			</div>
			<div class="pf-element">
				<span class="pf-label">Location</span>
				<span class="pf-note">This will not be displayed to visitors.</span>
				<span class="pf-field">Pandora.</span>
			</div>
			<div class="pf-element">
				<span class="pf-label">Species</span>
				<span class="pf-field">N/A</span>
			</div>
			<div class="pf-element pf-buttons">
				<button class="pf-button" type="submit" name="submit">Correct</button>
				<button class="pf-button" type="button" name="changes">Make Changes</button>
			</div>
		</fieldset>
	</form>

Additional Info
===============

For examples/demos see http://sciactive.com/pform/
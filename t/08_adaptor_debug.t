$adaptor_name = 'CSS::Adaptor::Debug';
$expected_output = "NEW RULE\n".
		"--------------------------------------------------\n".
		"SELECTORS:\n\ta\n\n".
		"PROPERTIES:\n\tb:\tc;\n\n".
		"--------------------------------------------------\n\n";

require 't/harness_adaptor';

#!/bin/sh
dropdb -U `whoami` big_pr_examples
createdb -U `whoami` big_pr_examples
dropdb -U `whoami` big_pr_examples_test
createdb -U `whoami` big_pr_examples_test

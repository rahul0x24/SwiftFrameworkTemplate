rm -rf "{{ cookiecutter.name }}"
cp -R "FRAMEWORKNAME" "FRAMEWORKNAME.bak"

# Do replacements
function replace {
  LC_ALL=C find ./FRAMEWORKNAME -type f -exec sed -i '' "s/$1/$2/g" {} +
}
replace "FRAMEWORKNAME" "{{ cookiecutter.name }}"
replace "FRAMEWORKSUMMARY" "{{ cookiecutter.summary }}"
replace "FRAMEWORKBUNDLEIDENTIFIER" "{{ cookiecutter.bundle_identifier }}"
replace "FRAMEWORKFULLNAME" "{{ cookiecutter.full_name }}"
replace "FRAMEWORKEMAIL" "{{ cookiecutter.email }}"
replace "FRAMEWORKGITHUBNAME" "{{ cookiecutter.github_name }}"
replace "FRAMEWORKHOMEPAGE" "{{ cookiecutter.homepage }}"
replace "FRAMEWORKTWITTER" "{{ cookiecutter.twitter }}"

# Do Renames
LC_ALL=C find ./FRAMEWORKNAME -type f -exec rename -p -S "FRAMEWORKNAME" "{{ cookiecutter.name }}" {} +

rm -rf FRAMEWORKNAME
mv FRAMEWORKNAME.bak FRAMEWORKNAME

rm -rf "{{ cookiecutter.name }}/Carthage"

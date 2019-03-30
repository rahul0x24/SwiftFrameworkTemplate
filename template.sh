rm -rf "{{ cookiecutter.name }}"
cp -R "FRAMEWORKNAME" "FRAMEWORKNAME.bak"

# Do replacements
function replace {
  LC_ALL=C find ./FRAMEWORKNAME.bak -type f -exec sed -i '' "s/$1/$2/g" {} +
}
replace "FRAMEWORKNAME" "{{ cookiecutter.name }}"
replace "FRAMEWORKSUMMARY" "{{ cookiecutter.summary }}"
replace "FRAMEWORKVERSION" "{{ cookiecutter.version }}"
replace "FRAMEWORKBUNDLEIDENTIFIER" "{{ cookiecutter.bundle_identifier }}"
replace "FRAMEWORKFULLNAME" "{{ cookiecutter.full_name }}"
replace "FRAMEWORKEMAIL" "{{ cookiecutter.email }}"
replace "FRAMEWORKGITHUBNAME" "{{ cookiecutter.github_name }}"
replace "FRAMEWORKHOMEPAGE" "{{ cookiecutter.homepage }}"
replace "FRAMEWORKTWITTER" "{{ cookiecutter.twitter }}"

# Do Renames
function rename {
  LC_ALL=C find ./FRAMEWORKNAME.bak -type f -exec rename -p "s/$1/$2/g" {} +
}
rename "FRAMEWORKNAME" "{{ cookiecutter.name }}" {} +

rm -rf FRAMEWORKNAME.bak
rm -rf "{{ cookiecutter.name }}"
mv "{{ cookiecutter.name }}.bak" "{{ cookiecutter.name }}"

rm -rf "{{ cookiecutter.name }}/Carthage"
rm -rf "{{ cookiecutter.name }}/vendor"
mv "{{ cookiecutter.name }}/.gitignore" "{{ cookiecutter.name }}/_gitignore"

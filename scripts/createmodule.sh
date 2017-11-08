#!/bin/bash
foulderName=$1;
cd ./packages/;
mkdir ${foulderName};
cd ${foulderName};

# 写入package.json
packagefile="{
  \"name\": \"$foulderName\",
  \"version\": \"0.0.0\",
  \"description\": \"\",
  \"scripts\": {
    \"test\": \"./scripts/test.sh\"
  },
  \"author\": \"${USER}\",
  \"license\": \"UNLICENSED\",
  \"main\": \"build/index.js\",
  \"dependencies\": {},
  \"devDependencies\": {
    \"isparta\": \"^4.0.0\",
    \"mocha\": \"3.4.2\",
    \"muk\": \"0.5.3\",
    \"babel\": \"6.23.0\",
    \"babel-cli\": \"6.18.0\",
    \"babel-eslint\": \"^7.1.1\",
    \"babel-preset-es2015\": \"6.18.0\",
    \"babel-preset-stage-0\": \"6.16.0\",
    \"chai\": \"^3.5.0\",
    \"del\": \"^2.2.2\",
    \"g-upload-image\": \"^1.0.10\",
    \"gulp\": \"3.9.1\",
    \"gulp-babel\": \"6.1.2\",
    \"gulp-eslint\": \"3.0.1\",
    \"gulp-header\": \"1.8.8\",
    \"gulp-newer\": \"^1.3.0\",
    \"gulp-plumber\": \"^1.1.0\",
    \"gulp-rename\": \"1.2.2\",
    \"gulp-sourcemaps\": \"2.2.0\",
    \"gulp-uglify\": \"2.0.0\",
    \"gulp-util\": \"^3.0.8\",
    \"gulp-webpack\": \"1.5.0\",
    \"gutil\": \"^1.6.4\",
    \"ink-docstrap\": \"^1.3.0\",
    \"json-loader\": \"^0.5.4\",
    \"require-dir\": \"^0.3.1\",
    \"watchify\": \"^3.8.0\",
    \"webpack\": \"^2.1.0-beta.25\",
    \"webpack-stream\": \"3.2.0\"
  }
}";

echo -e "$packagefile" > package.json;

npm install;
mkdir src;
mkdir test;
cp -R ../../scripts/tpl/* ./;
cp ../../scripts/tpl/.babelrc ./;
cp ../../scripts/tpl/.npmignore ./;
cp ../../scripts/tpl/gulpfile.js ./;



echo -e "Done. \n弄完了滚吧"; 
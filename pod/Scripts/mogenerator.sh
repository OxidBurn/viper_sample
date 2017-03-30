
echo "Removing old MogeneratorPONSO"
cd "${SRCROOT}/../src/Models/GeneratedPONSO/"
rm *.*
echo " "

echo "Renaming PONSO files"
cd "${SRCROOT}/../src/Models/PlainObjects/"
for file in *.*
do
filename="${file/PlainObject.*/}"
ext="${file##*.}"
mv $file ${filename}ModelObject.${ext}
done
echo " "

echo "Run mogenerator script"
/usr/local/bin/mogenerator \
--model "${PROJECT_DIR}/../src/Models/CoreDataModel/ViperSampleModel.xcdatamodeld" \
--machine-dir "${PROJECT_DIR}/../src/Models/GeneratedMO/" \
--human-dir "${PROJECT_DIR}/../src/Models/ManagedObjects/" \
--template-var arc=true

echo "Generating PONSO"

/usr/local/bin/mogenerator \
--model "${PROJECT_DIR}/../src/Models/CoreDataModel/ViperSampleModel.xcdatamodeld" \
--machine-dir "${PROJECT_DIR}/../src/Models/GeneratedPONSO/" \
--human-dir "${PROJECT_DIR}/../src/Models/PlainObjects/" \
--template-path "${PROJECT_DIR}/../pod/Scripts/PONSOTemplates" \
--base-class "NSObject" \
--template-var arc=true
echo " "

echo "PONSO back renaming"
cd "${SRCROOT}/../src/Models/GeneratedPONSO/"
for file in *.*
do
filename="${file/ModelObject.*/}"
ext="${file##*.}"
mv $file ${filename}PlainObject.${ext}
done
echo " "

cd "${SRCROOT}/../src/Models/PlainObjects/"
for file in *.*
do
filename="${file/ModelObject.*/}"
ext="${file##*.}"
mv $file ${filename}PlainObject.${ext}
done
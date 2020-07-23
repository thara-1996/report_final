import 'package:flutter/material.dart';
import 'package:record_app/screens/home/report_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var report_list = [
    {
      "name": "ANA",
      "picture": "assets/T2.jpg",
      "Description":"This is a test which helps to detect the presence of anti-nuclear antibodies in the blood. Antibodies are proteins produced by your immune system, in order to destroy substances which are recognized as foreign to the body. In this case, anti-nuclear antibodies are produced against the nucleus of the cells present in our body, meaning that your body has started to attack its own cells, which can lead various health problems.",
      "overview":"The antinuclear antibody test is done to detect the presence of antibodies to the nucleus of our cells. This type of condition where the body has started to stack its own cells is called autoimmune diseases, and can manifest in many forms. The different types of autoimmune conditions include rheumatoid arthritis and systemic lupus erythematosus.",
      "prepare":"There are no special preparations that you have to make before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing an ANA test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"Our test will show either a positive or negative result. If it’s negative it means that you don’t have any autoimmune condition. But if the test is positive, it can mean that you are suffering from any of the above mentioned autoimmune conditions, and you will have to undergo further testing to diagnose which specific condition it is.",
      "affects":"Certain medication can play a role in altering the results of these tests. There can be occasions when healthy people have small amounts of ANA in their blood, and this can lead to false positives as well.",

    },
    {
      "name": "Blood Glucose Test",
      "picture": "assets/T3.jpg",
      "Description": "A blood glucose test is done in Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards. Glucose is a type of sugar that is present in your blood stream and is usually kept under control with the help of a hormone called insulin, which helps to remove insulin from the blood by pushing it into the cells.",
      "overview":"The blood glucose test is done to check if your blood glucose levels are within the normal range, and is very often done in order to diagnose as well as monitor diabetes, and is the preferred test by most physicians because it is easy to do, convenient for patients, cheap and gives an accurate measure. This test is referred to by other names such as blood sugar test and fasting blood glucose test.",
      "prepare":"Before you undergo this test, you will be asked to keep fasting, that is not eat or drink anything for a period of 8-10 hours. If there is any other specific preparations you have to make, then your healthcare provider will inform you about it.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. Once the necessary volume is collected, the sample is sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a blood glucose test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will more often than not resolve on their own within a couple of days.",
      "result":"A normal blood glucose level is considered anywhere between 70-100 mg/dL. When your fasting blood glucose levels are greater than 126 mg/dL on two separate occasions, then you are likely to be diagnosed with hyperglycemia. The commonest cause of hyperglycemia is diabetes, but other causes include, kidney disease, hyperthyroidism and pancreatitis. When your blood glucose level is less than 70 mg/dL, it is considered to be hypoglycemia, and the causes for this include, intake of too much insulin, diabetic medication, or skipping meals if you have already been diagnosed with diabetes, or conditions such as liver disease and hypothyroidism.",
      "affects":"When you are undergoing a fasting blood glucose test, the time that you have been fasting plays a role in altering the blood glucose levels. Therefore make sure you have the blood drawn for testing between 8-10 hours of fasting and in not less or more time than that.",
    },
    {
      "name": "CRP",
      "picture": "assets/T4.jpg",
      "Description": "This test is done to measure the level of a substance called C - reactive protein (CRP) in your blood. This is a protein which is produced in the liver, and is considered to be an inflammatory marker. Meaning that the levels of CRP increases in your blood, only when there is inflammation going on in some part of your body, indicating that something is not right.",
      "overview":"This test will help measure the levels of the C - reactive protein in your blood, helping your doctor to determine if they are normal or above the required value. This test is commonly performed when your doctor suspects that you may be having an ongoing infection, and very high values may help determine the seriousness of the condition as well.",
      "prepare":"There are no special preparations that you have to make before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a CRP test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"The normal value for the CRP test is less than 10 mg/L. If your results are indicating a value higher than this, then it means there is some type of inflammation going on in an area of your body. But it doesn’t indicate exactly where this is happening. Very high levels indicate a more serious problem. If you receive results showing higher than normal values, you must get advice from your doctor regarding the next step.",
      "affects":"While the level of C – reactive protein in your body can go up during various illnesses, certain medications which you might be taking may also elevate the level of CRP. Therefore if you get a higher than normal result, you have to discuss the medication you are taking with your doctor as well.",
    },
    {
      "name": "Full Blood Count",
      "picture": "assets/T9.jpg",
      "Description": "The full blood count also called the complete blood count is a test which is routinely done on all patients complaining of an ailment. Because this test can give an idea about your overall health, as it is a measure of many different components in your blood, which is all the different types of cells present in the blood.",
      "overview":"The full blood count is the test which is very commonly used by doctors in order to evaluate your overall health. This test measures the different types of cells present in the blood including, red blood cells, the many different white cells and platelets. It also gives an idea about other parameters such as hemoglobin and hematocrit.",
      "prepare":"There are no special preparations that you have to make before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a full blood count test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"Since the full blood count gives you a measure of different components in blood, each of the levels have to be evaluated carefully. Your target values should be as follows:Red blood cells (RBC) – for males it should between 4.32 to 5.72 million cells/mcL, for females it should be between 3.90 to 5.03 million cells/mcL. White blood cells (WBC) - 3,500 to 10,500 cells/mcL Platelets - 150,000 to 450,000/mcL Hemoglobin – for males it should be between 13.5 to 17.5 grams/dL, for females it should be between 12.0 to 15.5 grams/dLIn your report you will also find the values for many other components, but these are by far the most important. If your test report shows any abnormal values, you should speak to your doctor about it.",
      "affects":"If you suffer from any pre-existing health condition such as anemia, low immunity or liver disease, the results of this test can vary.",
    },
    {
      "name": "HIV Antibody",
      "picture": "assets/T12.jpg",
      "Description": "The HIV antibody test is done as a screening test for HIV, which means that this test will help you in the process of diagnosing whether you have HIV or not. This test helps to detect the presence of antibodies against the HIV virus in your body. An antibody is a substance produced by your immune system when it detects the presence of foreign organism, and these antibodies help to fight them.",
      "prepareThe HIV antibody test helps to detect the presence of antibodies against the HIV virus, which causes AIDS. Antibodies are substances which help your body fight invasion by foreign organisms. The results of an HIV antibody test will be conclusive only 3-12 weeks after infection, because it takes some time for your body to produce the antibody against the HIV virus.":"",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis. There are home testing kits available, which require you to package a sample of saliva or a drop of blood from your fingertip.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a HIV antibody test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"The results of this test will either be positive or negative. The negative result either means that you have not been infected with the HIV virus or the test has been performed too early and your body has not had the time to produce the antibodies yet. Therefore you will be requested to undergo the same test at a later date. If the result is positive, then you will be asked to perform other tests as well, which will help confirm the diagnosis of HIV infection.",
      "affects":"There is nothing specific which can alter the results of this test, since it is done evaluate the presence of antibodies to the HIV virus.",
    },
    {
      "name": "Iron",
      "picture": "assets/T13.jpg",
      "Description": "Iron is a mineral that we consume in our diet, and even though it is required only in small quantities, it forms a vital component of the hemoglobin found in the red blood cells. The serum iron test helps us measure the amount of iron that is present in our blood, because the lack of iron or too much iron can lead to various health issues.",
      "overview":"The serum iron test is done to determine the amount of iron that is present in our blood. This is simple test, which can be conveniently carried out and the results of the test will help your doctor get a better understanding of the problem you might be having.",
      "prepare":"Certain medication and ingestion of iron containing food can alter the level of iron in the blood. Therefore your healthcare provider may ask you to undergo this test first thing in the morning or after fasting (that is not eat or drink anything, except water) for a period of 8-10 hours. You might also be asked to avoid certain medication on the day you are being tested. Talk to your healthcare provider regarding this.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a serum iron test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"The normal range of iron in your blood should be between 60 to 170 mcg/dL, or 10.74 to 30.43 micromol/L. If your results are showing values less than this, then you might be suffering from anemia. If your results are showing values more than this, then you might be suffering from iron overload due to conditions like thalassemia or hemochromatosis.",
      "affects":"As mentioned above certain food and medication can have an effect on the level of iron in the blood, therefore these should be avoided prior to testing. Any episodes of heavy bleeding before the test, such as due to heavy menstruation can also affect the reading. Always discuss these issues with your healthcare provider.",
    },
    {
      "name": "Lipid Profile",
      "picture": "assets/T14.jpg",
      "Description": "Lipids are fats and fat like substances which are found in our body and act as an important source of energy to the cells in our body. In normal amounts lipids are beneficial, but when the levels increase it can pose a threat to your health in more ways than one.",
      "overview":"The basic lipid test will help your doctor measure the levels of various types of fat in your blood, including Total Cholesterol, LDL (also called low density lipoprotein and is thought to be the bad form of cholesterol), HDL (also called high density lipoprotein and is thought to be the good form of cholesterol) and Triglycerides.",
      "prepare":"A complete lipid profile requires that you fast (that is not eat or drink anything, except water) for a period of 8-10 hours before you undergo this test. Since there are some tests which do not require a period of fasting, if there is any other specific preparations you have to make, your healthcare provider will inform you about it.",
      "Tdone":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a lipid profile test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"Since the lipid profile gives you a measure of different types of fats in the body, each of the levels have to be evaluated carefully. Your target values should be as follows:Total Cholesterol - 75-169 mg/dL for individuals at the age of 20 and below. 100-199 mg/dL for those over age 21,LDL – should be less than 70 mg/dL for those with very high risk of heart disease. Less than 130 mg/dL for individuals who are at low risk for coronary artery disease,HDL – should be greater than 40 mg/dL, since this is considered the healthy form of cholesterol,Triglycerides – should be less than 150 mg/dl",
      "affects":"Lifestyle factors play an important role in determining the level of lipids in your body. Dietary habits as well as exercise are two of the most important aspects in this regard.",
    },
    {
      "name": "Liver Profile",
      "picture": "assets/T15.jpg",
      "Description": ("The liver is an important organ in our body which is critical for our wellbeing. It produces a variety of substances including enzymes, which play a key role in numerous processes within our body. A liver profile is a blood test which helps to determine how well our liver is functioning and if there is any abnormality associated with it."),
      "overview":"The liver profile test helps to evaluate the levels of various substances produced by the liver including, Total protein, Albumin, Bilirubin, Alkaline Phosphatase, SGOT, SGPT and Gamma GT. Some of these substances indicate any abnormality with the productive function of the liver, while others indicate that the liver might be releasing these substances in response to some damage elsewhere in the body.",
      "prepare":"Certain medication and food can have an effect on the liver function, therefore your healthcare provider may request you to avoid some of your medication and some types of food, before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a liver profile test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"Since the liver profile gives you a measure of various substances in the body, each of the levels have to be evaluated carefully. Your target values should be as follows:ALT - should be between 7 - 55 U/L,AST – should be between 8 - 48 U/L, ALP – should be between 45 - 115 U/L,Albumin – should be between 3.5 - 5.0 g/dL,Total protein – should be between 6.3 - 7.9 g/dL,Bilirubin – should be between 0.1 - 1.2 mg/dL,GGT – should be between 9 - 48 U/LIf your results are showing values lower than or higher than the above, you have to seek medical advice immediately.",
      "affects":"Certain food and medication that you consume can play a role in altering the levels of these substances, therefore you must always have a discussion with your doctor regarding this.",
    },
    {
      "name": "Rh Factor",
      "picture": "assets/T18.jpg",
      "Description": ("The test for Rh factor is usually carried out in pregnant mothers. The Rh factor is a protein which is found on the surface of the red blood cells in our body. If the protein is present, then you are said to be Rh positive, if the protein is absent, you are said to be Rh negative. This test is done to detect the present or absence of this protein."),
      "overview":"This test is carried in order to determine the presence or absence of the Rh factor which is a protein found on the surface of the red blood cells. Most individuals have this protein and are therefore Rh positive. Being Rh negative is not a problem, except during pregnancy, where if the baby is Rh positive, your body will start making antibodies against the Rh factor, and start to destroy the baby’s red cells when the blood is mixing.",
      "Test_prepare":"There are no special preparations that you have to make before you undergo this test.",
      "Test_done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "Test_feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "Test_risks":"There is very little risk in undergoing an Rh factor test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "Test_result":"If your test results show that you are Rh positive, then there is no problem. But if you are Rh negative and your baby is Rh positive, then further steps in the management need to be taken. You might have to report any episodes of PV bleeding during your pregnancy to your doctor immediately because there is a high risk of miscarriage. You will have to be administered Rh immunoglobulin injections, and extra care has to be taken during labor.",
      "Test_affects":"There are no specific factors which alter the results of this test.",
    },
    {
      "name": "Tyroid Profile",
      "picture": "assets/T19.jpg",
      "Description": ("The thyroid is a butterfly shaped gland located in the region of the neck. It secretes the hormone, thyroxin which is necessary for almost all the metabolic processes in the body. The thyroid profile is a test which helps to assess the capacity at which the thyroid gland is functioning."),
      "overview":"The thyroid profile helps your doctor assess the amount of thyroxin that is being secreted from the thyroid gland. Since there are three main components that form a part of the action of the thyroid gland, the thyroid profile helps to assess the levels of all these substances, which include, TSH, Free T4, and Free T3.",
      "prepare":"Certain medication can have an effect on the liver function, therefore your healthcare provider may request you to avoid some of your medication before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a thyroid profile test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"Since each of the three constituents in this test play a vital role in almost all the metabolic processes in the body, your doctor will evaluate all the results very carefully. Your target values should be: TSH – 0.4 to 5 mIU/L,Free T4 – 0.9 to 2.3 ng/dL,Free T3 – 130 to 450 pg/dLIf you have results which are higher than or lower than this range, you should speak to your doctor about it.",
      "affects":"Certain medication that you consume can play a role in altering the levels of these substances, therefore you must always have a discussion with your doctor regarding this.",
    },
    {
      "name": "Troponin 1",
      "picture": "assets/T21.jpg",
      "Description": "This is a test which measures the level of the protein called troponin I present in the blood. This protein is present in both cardiac muscle and skeletal muscle, but there is a one type of troponin I which is specific to cardiac muscle only. And it is this specific type of troponin I which is measured in this test.",
      "overview":"This is a test which measures the level of the protein called troponin I present in the blood. This protein is present in both cardiac muscle and skeletal muscle, but there is a one type of troponin I which is specific to cardiac muscle only. And it is this specific type of troponin I which is measured in this test.",
      "prepare":"There are no special preparations that you have to make before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a troponin I test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"The normal value for the level of troponin I in your blood should be less than 0.05 ng/ml in patients older than 17 years of age. If you have levels greater than this, it does not necessarily indicate a myocardial infarction, and can even sometime be due to non-cardiac causes such as renal failure and pulmonary embolism. If you have values greater than 0.05 ng/ml then you should speak with your doctor regarding this.",
      "affects":"As mentioned above, although this is considered to be a cardiac specific test, there may be other health conditions which can result in elevated levels of troponin I such as renal failure and pulmonary embolism. Therefore you need to discuss these pre-existing conditions with your doctor before you undergo this test.",
    },
    {
      "name": "Troponin T",
      "picture": "assets/T22.jpg",
      "Description": "This is a test which measures the level of the protein called troponin T present in the blood. This protein is present in cardiac muscle, and is usually not present in large amounts freely in the circulating blood. But on those occasions when the heart muscle undergoes an injury, then these proteins are released into the blood stream and can be found in high levels.",
      "overview":"The troponin T test will help your doctor evaluate the level of the protein, troponin T present in the blood, and determine the presence of any damage to the heart muscle. The greater the amount of damage, the higher the levels of troponin T present in your blood. This in turn will give your doctor an idea about the severity of the condition you are suffering from as well.",
      "prepare":"There are no special preparations that you have to make before you undergo this test.",
      "done":"During this, a Medical Lab Technician will draw out a small volume of blood, using a needle and syringe which is inserted into a vein in your arm. This blood sample is then sent to the lab for analysis.",
      "feel":"Since this test is a simple drawing of blood, you will not feel a lot of discomfort. You might experience a mild pain on inserting the needle, but you will not experience any uneasiness afterwards.",
      "risks":"There is very little risk in undergoing a troponin T test, because it is a simple blood drawing. Very rarely you might continue to have a mild pain or some swelling at the site where the needle was inserted, but these symptoms will resolve on their own within a couple of days.",
      "result":"The normal value for the level of troponin T in your blood should be less than 0.01 mg/ml in patients older than 17 years of age. Depending on how elevated the levels of troponin T are, the severity of the damage to your heart muscle can be determined. But there can be occasions where an elevated troponin T level does not necessarily indicate a myocardial infarction, and can even sometime be due to non-cardiac causes such as renal failure and pulmonary embolism. If you have values greater than 0.01 mg/ml then you should speak with your doctor regarding this.",
      "affects":"As mentioned above, although this is considered to be a cardiac specific test, there may be other health conditions which can result in elevated levels of troponin T such as renal failure and pulmonary embolism. Therefore you need to discuss these pre-existing conditions with your doctor before you undergo this test",
    },
    {
      "name": "Urine Culture",
      "picture": "assets/T24.jpg",
      "Description": "The urine culture, is a test which is done to test your urine specifically for the presence of bacteria or other microorganisms, in the case of a urinary tract infection. This test is usually not performed alone and always follows a urine full report test, if it indicates the presence of an infection.",
      "overview":"The urine culture test is performed in order to detect the presence of infection causing organisms such as bacteria in the urine. If you complain of symptoms which indicate a urinary tract infection, then you will be asked to collect a urine sample which is then kept in conditions which encourage the growth of bacteria, if there are any, because bladder urine is usually a sterile fluid.",
      "prepare":"There are no special preparations needed to undergo this test, but the sample for the urine culture is best taken early in the morning as the first urine of the day.",
      "done":"The urine culture and ABST test requires a clean catch midstream urine sample, which means that you have to collect the sample into a special container provided by the hospital, after you wash the region of the urinary opening with water. The sample is then sent to the lab, where it is placed in a culture medium, which allows the bacteria to grow.",
      "feel":"Since the test requires only the collection of urine sample, there is no discomfort you have to experience when this test is being done.",
      "risks":"There are no risks involved, when you undergo a urine culture and ABST test. It is considered a safe and noninvasive test.",
      "result":"Normal growth or minimal growth of bacteria or yeast, means that there is no infection. If there is a high colony count of the organism in the culture, then it means that there is an infection and the ABST report will tell you to which medication the organism is sensitive. If there is a mixture of two or more organisms found, it means the urine sample which was taken had been contaminated.",
      "affects":"The most common factor which alters the results of a urine culture and ABST test is the consumption of antibiotics, either at the time of doing the test or in the recent past. You must always discuss the medication you are taking with your doctor prior to performing the test.",
    },
    {
      "name": "Urine Full report",
      "picture": "assets/T24.jpg",
      "Description": "The urine full report is a test which people undergo in order to have their urine tested. This report helps to analyze the urine for the presence or absence of certain substances, helping your doctor get a clearer idea of what might be wrong with you. This is one of the most common investigations which will be ordered by your doctor, because it is cheap and convenient and gives them a good understanding of abnormalities which might be present.",
      "overview":"The urine full report or urinalysis as it is often called, is a test done to analyze the urine, which is commonly performed if you complain to your doctor about urinary symptoms. This analysis helps to detect various aspects of the urine such as color, appearance, pH, presence or absence of red cells, epithelial cells, casts and crystals, as well as glucose, protein, ketone bodies, bilirubin and urobilinogen.",
      "prepare":"There are no special preparations that you need to make before you perform this test. You will be allowed to eat and drink as usual, but you might want to avoid food containing dyes and bright colors such as beets, as they tend to discolor the urine. If you are menstruating, then you should inform your doctor about it.",
      "done":"The urine full report requires that you provide the laboratory with a urine sample. This sample can be collected at home or at the hospital in a container provided by the hospital. You need to get what is known as a clean catch urine sample, which requires that you wash the region of the urinary opening well with water, and collect about 1-2 ounces of urine into the container, midstream. This urine sample is then sent to the laboratory for analysis.",
      "feel":"Since the test requires only the collection of urine sample, there is no discomfort you have to experience when this test is being done.",
      "risks":"There are no risks involved, when you undergo a urine full report. It is considered a safe and noninvasive test.",
      "result":"There are various aspects of the urine full report that need to be evaluated carefully. If there are substances such as glucose, ketone bodies and proteins which are not usually present in the urine, then it means that your kidney is filtering substances which it should not. The presence of white cells or bacteria in the urine indicate towards an infection. The presence of red cells is another worrying sign. If your report is showing any abnormality, make sure you discuss them with your doctor.",
      "affects":"Certain medication and food that you consume can cause variation in the levels of the different substances which are being analyzed in the urine. Always discuss your medication with your doctor.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: report_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              Test_name: report_list[index]['name'],
              Test_pricture: report_list[index]['picture'],
              Test_description: report_list[index]['Description'],
              Test_overview:report_list[index]['overview'],
              Test_prepare:report_list[index]['prepare'],
              Test_done:report_list[index]['done'],
              Test_feel:report_list[index]['feel'],
              Test_risks:report_list[index]['risks'],
              Test_result:report_list[index]['result'],
              Test_affects:report_list[index]['affects'],

            ),
          );
        });
  }
}

cells(rbc) {
}

class Single_prod extends StatelessWidget {
  final Test_name;
  final Test_pricture;
  final Test_description;
  final Test_overview;
  final Test_prepare;
  final Test_done;
  final Test_feel;
  final Test_risks;
  final Test_result;
  final Test_affects;



  Single_prod(
      {this.Test_name,
      this.Test_pricture,
      this.Test_description,
      this.Test_overview,
      this.Test_prepare,
      this.Test_done,
      this.Test_feel,
      this.Test_risks,
      this.Test_result,
      this.Test_affects,
});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: Test_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //here passing the values of the report
                  builder: (context) => new ReportDetails(
                        Test_name: Test_name,
                        Test_pricture: Test_pricture,
                        Test_description: Test_description,
                        Test_overview:Test_overview,
                        Test_prepare:Test_prepare,
                        Test_done:Test_done,
                        Test_feel:Test_feel,
                        Test_risks:Test_risks,
                        Test_result:Test_risks,
                        Test_affects:Test_affects,


                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        Test_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      //title: Text(
                      //"\$$Test_description",
                      // style: TextStyle(
                      // color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                    //subtitle: Text(
                    //"\$$prod_old_price",
                    //style: TextStyle(
                    //     color: Colors.black54,
                    //  fontWeight: FontWeight.w800,
                    //decoration: TextDecoration.lineThrough),
                    // ),
                    // ),
                  ),
                  child: Image.asset(
                    Test_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

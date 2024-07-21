# SheSafe

Features:
SOS Alert: Women can swiftly send their location to pre-set trusted contacts in case of emergencies, ensuring immediate assistance.

Safe Route: Utilizes Google Maps API and K-means clustering ML algorithm to provide the safest and shortest path to the destination, enhancing navigation security.

Violence detection with smart Glasses: Using integrated smart glasses, if any type of violence is detected against the user through our ML model, the app asks the user to response, if no response is received in 60 second, it sends SOS broadcast to emergency contacts and police.

Accident Prevention: Utilizing Flutter sensor controller, while riding through the safe route, enhance your safety by turning on harsh brake detector, which produces quick alert on detecting rough riding or accidents.

Regular safety assurance mode: Turn on this mode, to regularly receive the safety assurance notification using a background service, to ensure your safety even while you are not using Saheli.

Emergency Services Locator: Quickly access nearby police stations, hospitals, and bus stands from the current location, ensuring immediate access to help.

Helpline Directory: Comprehensive list of important helpline numbers essential during emergencies, facilitating quick access to support services.

Fake Caller: Activate a fake incoming call feature by shaking the phone or manually triggering, providing a discreet exit strategy from potentially unsafe situations.

Scheduled Fake Caller: Set scheduled fake calls with customized name, number, and timing, offering a seamless escape plan.

AI Chatbot : Integrated AI chatbot using Gemini AI, VERTEX AI API and Dialogflow which is trained on women's safety, providing guidance, tips, and assistance during emergencies, with pre-added suggestions.

Crowdsourced Safety Zones: Empower users to report unsafe areas and identify verified safe zones, fostering community-driven safety initiatives.

Offline Accessibility: Ensure core functionalities remain accessible even without internet connectivity, prioritizing usability in diverse environments.

Audio-Video Recording: Activate automatic audio-video recording with SOS alerts, capturing real-time environment data for immediate assistance or legal evidence.



Folder Structure
backend: Backend code built in Nodejs and Expressjs and database as Google Firestore where it has all user routes as well safe route.
frontend/saheli_app: Flutter code of Saheli App.
gemini-chatbot: RAG Based chatbot built with Gemini AI and Llama_index.
real-time-video-detection: Machine learning code built with Tensforflow and Opencv to detect violence in video
safe-route: Safe-Route Model trained


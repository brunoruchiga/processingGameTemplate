class Save {
  JSONObject data;

  Save() {
    createSaveFile("data/save.json");
  }

  void createSaveFile(String path) {
    if (loadStrings(path) == null) {
      data = new JSONObject();
      data.setInt("id", 0);
      data.setString("languageId", languageId);
      saveJSONObject(data, path);
    } else {
      data = loadJSONObject(path);
    }
    println(data);
  }
}

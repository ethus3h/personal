Investigate bill due date / financial aid / enrollment

- RENT 396.99
- 2884098
- 16m50s ep 12 Haibane Renmei
- Wednesday, October 31
10:30 – 11:00am
Boardman Hall, Orono, ME 04473, USA Room #238

NMD498:
- slack; https://nmd498-2018.slack.com/messages/CCL81PTTJ/
- word press: http://umainenewmedia.net/course/nmd-498-copy/
- syllabus: http://jonippolito.net/teaching/capstone/capstone_syllabus_2x_week.html
- Office hours: 10 to 12 (?) office hours Wednesday reservation https://is.gd/JMDye3 — COME AT LEAST ONCE!
- Visual approaches: Create and include at least two more approaches (flowcharts, storyboards, renderings, etc) that could help someone evaluate your project.
- include your standing is in each of the social networks you plan to use, and how you might increase it. 
- Feedback integration
  - "This project should aim to systematically support the libre development and distribution as best as possible of the full set of knowledge and resources needed to support humans' standard of living, and to ensure the availability of communities managed in the long-term interest of their constituents, humanity, and the environment.": "Once again: bring a few examples of how this would all work."
  - "think about how to bring the reader early on into getting the concept of the project. I think you do it relatively well but you should help your reader by bringing strong/concrete examples from the onset. Also adding some figures would help. The text just feels a little bit too “dry” and technical. You can start with making it more digestable, and then in later sections you can go towards more technical stuff. You *do it* already but … just not enough."
  - extplain what we are doing very simply. Explian wwhy weere doing it, can me more intellecutaly.
  - Add user stories / use cases.
- ASSIGNMENT 6:
  - Revised proposal DUE 23 OCT 2018

COS312: 
- Assignenmnts on Black board (https://my.umaine.edu)
- assigments :exported packages. in a sinhgle folder named your_last_name_topic (except standard assets used, although these too should be included in the export). They must be appropriately organized (scenes , materils, scripts, texturse, documentation, prefabs, etc.) in indiviually named subdolders withyn your named folder. In the documentation folder, inculde a README.txt or pdf that explains how to set up and use what is contained in the exported package. In addition there should be a separate one-page document describing your experienc ewith the live training: what it was about what you learned an the natuer of the tool or asset you have developed. Be critical... This should be included in th edocumentatio folder along with the readme. A simple demo scene, as light weight as posible. Do not include massive folders of assets that are not necesssary for the package. These should not be huge .Make the demo scene simple, a plane, a light, a character, and your product, which SHOULD be a completely assembeld prefab. I should be able to open an empty unity game, import your package, have the demo scene just work, and be able to create a simple sceen of my own and dorp into it your prefabs and with very minor fiddling (described in detail in the provided documentitation (redame)) have it work. We need to do this test it ourself., exactly as dscsicribed abeve, before you havd it in. If i cannot make it work the grade will be low. If i cannot make it work the grade will be low. See for example the detonator package or the gem ashedr package for .examlpes you of you how your paockges should be set up . Think of this as prepring an asset that you might want to seelll yourself on the asset store. Sublmit these 1 per week in Black bord . In  goole drive as unitypackge files. Simply doing "export" (the Assets/Export Package menu pulldown, with the folder withall your suff in it highlighted, and the "include depednincencies" boxed chekced) has one SERIOUS flaw.: If ou have any custom tags, layers, or buildsettings, these will NOT beincluded , sinceall of these reside in the PRojectSettings folder, which is OUTSIDE the Assets folder of thegame project. There are 2 ways to deal with this. First, is to zip up th prjectsettings foldera nd include it with it, with very clear instrucetions that need to be for how to do this. A more sufisticated approect to this is to exprot it using a editor script. Editor script that exports your packeg folder , a long wit any depnetnitncies, (i.e. things in Standrecd assets), as well asthe custom PRojoctet Settings that contina your custem tags, latyers, input settings , build settings , etc. Editor scripts must reside in a folder named EDitor. They are not attached to any specific game object in any specific scene. They do NOT extend MonoBehavir as all of our previous scripts have.  There is a example of this in Coroutiens in "Fastook_Coroutines" with materials prefabs scirpts. Add a 

```
using UnityEngine;
using UnityEditor;

public class ExportPackage {
  [MenuItem ("AssetDatabase/ExportExample")]
  static void ExportExample () {
    AssetDatabse.ExportPackage("Assets/Fastook_Coroutines", "Fastook_Coroutines.unitypackage", ExportPackageOptions.Interactive | ExportPackageOptions.IncludeDependencies | ExportPackageOptions.recurse | ExportPackageOptions.IncludeLibraryAssets);
  }
}
```

The resulting file end up in the UNity game folder.

NMD344:
- Is Slack: https://nmd344.slack.com/messages
- Due : Assignment 30 Seconds Tv intro THURSDAY

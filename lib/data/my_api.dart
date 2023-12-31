import 'package:unlock/data/locator.dart';
import 'package:unlock/generated/l10n.dart';

final S _s = locator<S>();

class Category {
  String categoryName;

  Category({required this.categoryName});
}

List<Category> categories = [
  Category(categoryName: _s.catCrisisSituations),
  Category(categoryName: _s.catMotherhood),
  Category(categoryName: _s.catRelationhipsWithPeople),
  Category(categoryName: _s.catFindingSupport),
  Category(categoryName: _s.catSearchForAResource),
  Category(categoryName: _s.catBuildingYourOwnBoundaries),
  Category(categoryName: _s.catOvercomingFears),
  Category(categoryName: _s.catPriorities),
  Category(categoryName: _s.catPsychosomatics),
  Category(categoryName: _s.catSelfEsteemAndSelfWorth),
  Category(categoryName: _s.catSelfSabotage),
  Category(categoryName: _s.catConfidence),
];

class Practice {
  String category;
  String practiceName;

  Practice({required this.category, required this.practiceName});
}

List<Practice> practices = [
  Practice(category: 'Crisis situations', practiceName: 'Inner shadow'),
  Practice(category: 'Crisis situations', practiceName: 'Crossroads'),
  Practice(
      category: 'Crisis situations', practiceName: 'Growth after destruction'),
  Practice(category: 'Motherhood', practiceName: 'My motherhood/my new role'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Relationship analysis'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Harmonious relationships'),
  Practice(category: 'Relationships with people', practiceName: 'Add subtract'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Desired relationship'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Ending the relationship'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'The melody of my relationship'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'My ideal relationship'),
  Practice(category: 'Relationships with people', practiceName: 'My parents'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Neutralize conflict in the family'),
  Practice(category: 'Relationships with people', practiceName: 'Grievances'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Relationships can be harmonious'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Lack of relationship'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Partnership and interaction'),
  Practice(
      category: 'Relationships with people', practiceName: 'Resource of love'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Create your own story'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Problem child – how to find a solution'),
  Practice(
      category: 'Relationships with people', practiceName: 'I have I Want'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'Me and my work (project, scientific activity)'),
  Practice(
      category: 'Relationships with people',
      practiceName: 'I end relationships easily'),
  Practice(category: 'Finding support', practiceName: 'Life supports'),
  Practice(category: 'Finding support', practiceName: 'From fear to safety'),
  Practice(
      category: 'Finding support', practiceName: 'A story with a happy ending'),
  Practice(
      category: 'Finding support', practiceName: 'Joy as a vital necessity'),
  Practice(category: 'Finding support', practiceName: 'I have wings'),
  Practice(
      category: 'Search for a resource', practiceName: 'Gifts of the family'),
  Practice(
      category: 'Search for a resource',
      practiceName: 'Movement = achievement'),
  Practice(
      category: 'Search for a resource',
      practiceName: 'Tree of my inner strength'),
  Practice(category: 'Search for a resource', practiceName: 'Changes'),
  Practice(
      category: 'Search for a resource',
      practiceName: 'My happiness is in my head'),
  Practice(
      category: 'Search for a resource', practiceName: 'My home is my castle'),
  Practice(
      category: 'Search for a resource', practiceName: 'My resource is me'),
  Practice(category: 'Search for a resource', practiceName: 'On the timeline'),
  Practice(category: 'Search for a resource', practiceName: 'Resource Puzzles'),
  Practice(
      category: 'Search for a resource',
      practiceName: 'Obstacles and resources'),
  Practice(
      category: 'Search for a resource', practiceName: 'Continuing to live'),
  Practice(category: 'Search for a resource', practiceName: 'The power of joy'),
  Practice(
      category: 'Building your own boundaries',
      practiceName: 'Me and my boundaries'),
  Practice(
      category: 'Building your own boundaries',
      practiceName: 'Me and those around me'),
  Practice(category: 'Overcoming Fears', practiceName: 'On the wings of fear'),
  Practice(category: 'Overcoming Fears', practiceName: 'From fear to action'),
  Practice(category: 'Overcoming Fears', practiceName: 'Hero Journey'),
  Practice(category: 'Overcoming Fears', practiceName: 'Working with fear'),
  Practice(category: 'Priorities', practiceName: '3 options'),
  Practice(category: 'Priorities', practiceName: 'Important choice'),
  Practice(category: 'Priorities', practiceName: 'Intrapersonal conflict'),
  Practice(category: 'Priorities', practiceName: 'Magic pill'),
  Practice(category: 'Priorities', practiceName: 'Choice'),
  Practice(category: 'Priorities', practiceName: 'True desire'),
  Practice(category: 'Priorities', practiceName: 'Conscious choice'),
  Practice(category: 'Priorities', practiceName: 'Solution'),
  Practice(category: 'Priorities', practiceName: 'Strategy'),
  Practice(category: 'Priorities', practiceName: 'What is time'),
  Practice(
      category: 'Psychosomatics', practiceName: 'Dialogue with the symptom'),
  Practice(category: 'Psychosomatics', practiceName: 'Favorite disease'),
  Practice(category: 'Psychosomatics', practiceName: 'Letter from a symptom'),
  Practice(category: 'Psychosomatics', practiceName: 'Symptom'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Reclaim yourself'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Inner woman'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Harmony'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName: 'Two sides of my self'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName: 'Dialogue with the inner child'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Soul desire'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName: 'Getting to know your child'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Balance wheel'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName: 'Constructive self-esteem'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Role conflict'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName: 'The cat is inside us'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'My self-esteem'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Charming woman'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Accept yourself'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Self-esteem'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Hear yourself'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Doubts'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Blooming me'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Value and me'),
  Practice(category: 'Self-esteem and self-worth', practiceName: 'Guilt'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName:
          'What does the situation give me, what does the situation teach me?'),
  Practice(
      category: 'Self-esteem and self-worth',
      practiceName: 'I am the universe'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'I am the muse'),
  Practice(
      category: 'Self-esteem and self-worth', practiceName: 'Me and my values'),
  Practice(category: 'Self-sabotage', practiceName: '5 minutes to goal'),
  Practice(category: 'Self-sabotage', practiceName: 'Internal excuser'),
  Practice(category: 'Confidence', practiceName: 'Harmony'),
  Practice(category: 'Confidence', practiceName: 'Without looking back'),
  Practice(category: 'Confidence', practiceName: 'Tale of life'),
  Practice(category: 'Confidence', practiceName: 'I choose'),
];

getPracticesByCategory(String cat) {
  return practices.where((element) => element.practiceName == cat);
}

class MyAPI {
  int getCategoriesLength() {
    return categories.length;
  }

  List<Category> getCategories() {
    return categories.toList();
  }

  List<Category> myCategories = categories;

  List<Practice> myPractices = practices;

  getPracticesByCategory(String cat) {
    return practices.where((element) => element.practiceName == cat);
  }

  List<String> articles = [
    _s.artWhatIsMac,
    _s.artTypesOfMACDecks,
    _s.artPryncyplesOfWorking,
    _s.artStrategiesForWorking,
    _s.artMethodsOfApplication,
    _s.artMACDiagnostics,
    _s.artAuxiliaryTool,
    _s.artWorkingTool,
    _s.artSchemeOfPsychocorrectionSession,
    _s.artFixation,
    _s.artRequestOptions,
    _s.artSessionEndOptions
  ];
}

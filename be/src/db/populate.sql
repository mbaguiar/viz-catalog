-- Table: Work

INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (1, "CS AKTiveSpace", 2004, "CS AKTiveSpace (CAS) is a platform developed to take advantage of the semantic and distributed content collected related to Computer Science research in the United Kingdom. This application was developed, in part, to test the applicability to any domain of the mSpace model. Due to being based on mSpace, CAS user interface allows a semantic exploration of the domain tailored to its unique attributes. Users can explore the dataset by filtering down the instances by research area and location. An overview of the main instances, in this case researchers, is displayed to the user using a map, where they can select a specific area. When a researcher is selected, detailed information is also displayed in a simple textual format. While this application provides its users with a strong navigation approach, the authors state that it should be used as a complement to a more traditional keyword search, something not implemented in CS AKTiveSpace. No formal tests have been conducted to evaluate the user interface implemented, however it is stated that it was well received and motivated the development of other industrial and governmental funded platforms.", "Computer Science research in the UK", "Full-featured", "https://i.imgur.com/vTJvpU5.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (2, "Tabulator", 2006, "Tabulator is a RDF browser developed for both inexperienced and experienced users to interact with the Semantic Web, and post and refine RDF data. Tabulator's main goal was to provide a generic Linked Data browser, that at the same time lets users benefit from user interface tools commonly encountered in domain specific applications. Similarly to other works, Tabulator allows the users to semantically browse the web of data, following the links between different resources. These resources are displayed in a tree view, where nodes can be expanded to obtain more information about them. Tabulator also allows the users to query for resources by providing values to different fields. The results can be visualised in different ways, with a table, timeline, map, or calendar view. In either mode, searching or exploring, when a resource is selected, the user is directed to a page with an outline view of the resource featuring more detailed information about it. Even tough no formal usability tests were conducted for the user interface, the authors informally received feedback from technical and Linked Data experienced users, most of their comments and remarks were considered and incorporated in Tabulator's interface. While feedback from field experts is still important, we are unsure their requirements and problems are shared by or useful to inexperienced users.", "Generic", "Browsers and exploratory", "https://i.imgur.com/l57VKXc.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (3, "OKM Knowledge Management", 2010, "OKM Knowledge Management (OKM) is a Linked Data authoring tool developed to analyse and test how lay users can interact with Linked Data systems. OKM is based on a traditional user interface with ``resource-centric'' pages, where each resource has its own page with information and related resources. The users can follow these object properties to navigate the whole dataset. On top of this interface, the authors implemented some atypical features that were studied and analysed in order to assess their benefits to inexperienced users. One of the features was the inclusion of roles and templates. Instead of presenting a possibly exhaustive list of all the properties of a resource, the authors defend that a role must be defined for each class of the domain, where the most relevant information is displayed first. When adding a resource to the system the user must also assign one or more roles to it. Additionally, a template is provided so that all relevant information for that role is filled by the user. To evaluate the impact of these features, user experiments were conducted with participants with no previous knowledge of Linked Data. From this study it can be concluded that while roles and templates facilitate the navigation and implicit creation of resources, they do not tackle all problems that arise by authoring LD. Firstly, for a user to benefit from a template they must select the right role and in general they are inconsistent unless relevant objects already have an appropriate role. Additionally, templates do not improve the correctness of the data entered by users and in some cases even lead to semantic incorrectness.", "Generic", "Full-featured", "https://i.imgur.com/qrL4AJp.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (4, "Haystack", 2003, "Haystack is a platform to facilitate the development of Linked Data applications, that allow lay users to create, manipulate, and visualise RDF data. Haystack focuses on providing developers and designers with user interface components that were designed specially to handle the heterogeneity of RDF data and contribute to a good user experience. Haystack allows designers to specify different types of views, differing in size and location, for every type of resource in the domain. Additionally, developers can also add customisable operations tailored to a resource, available in the view displayed to the user. This tool provides users with a keyword-based search, a simple textual visualisation of each resource, and mechanisms to author, edit, and annotate the resources. Finally, users can semantically explore the domain by following the links of the related resources.", "Generic", "Models and frameworks", "https://i.imgur.com/bdwl29j.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (5, "Ontowiki", 2006, "Ontowiki is a Semantic Web tool developed for facilitating the visual representation and creation of a knowledge base for end users. This tool is focused on social collaboration aspects, and so it presents features such as change tracking, comments and discussions forums, rating and popularity metrics, and analysis of the users activity. To visualise a single instance, Ontowiki provides its users with an instance view that combines all of the properties and presents information about similar instances and incoming links. Additionally, if the properties of an instance have geographic values they can be visualised in a map, or if they have date values they can be visualised in the form of a calendar. Regarding the search features provided, Ontowiki allows for facet-based browsing and a semantically enhanced full-text search. In the first approach users can select objects according to certain property values, resulting in a search that will never lead to empty results. For the second approach, users can search for one or multiple keywords that occur in literal property values, the results can then be filtered by individuals of a class or literal values of a certain property. To author and edit the data an inline edit mode is present in all information resulting from statements, following the ``What You See Is What You Get'' approach. The users can quickly edit or add statements by clicking a small edit or add button next to the information.", "Generic", "Full-featured", "https://i.imgur.com/RkyonRl.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (6, "TreePlus", 2006, "TreePlus is a tool for visualising graphs that can be applied to several domains and different types of graphs, like the ones resulting from Linked Data datasets. This tool presents the graph to the users in a tree layout, allowing them to interactively explore it by starting with a single node and incrementally expanding it. The main goals while developing TreePlus were to keep the relationship labels readable and the tree layout as steady as possible. TreePlus offers its users features like a preview of the adjacent nodes, zooming and panning, simple keyword search and browsing and sorting options. To evaluate the approach chosen in the development of TreePlus, a controlled experiment was conducted to evaluate the completion time, success rate, errors and user confidence, in comparison with a traditional graph visualisation approach. The tests concluded that TreePlus performed better in most of the tasks and that its benefits increase with the density of the graphs.", "Generic", "Browsers and exploratory", "https://i.imgur.com/f82adDK.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (7, "QuizRDF", 2004, "QuizRDF is a search engine proposed in 2004, to combine the advantages of free-text search with the advantages of browsing and searching for RDF metadata. The authors of this work defend that a typical user usually benefits more from starting with a single node or resource and exploring the remainder of the dataset from there; as opposed to starting with a general overview of the dataset. In order to do this, QuizRDF provides its users with an initial keyword search query, of ideally one or two terms, and a resulting ordered list of the results. Then, the users can further specify the search by selecting only the instances of a certain class, or the instances with a certain range of values for a given property. All the hyperlinks of properties relating the current class to others, or the super classes are clickable allowing the user to continue browsing and exploring the dataset. One of the limitations of this work, acknowledged by the authors, is the implemented user interface's lack of scalability. Currently, in QuizRDF there is no way of displaying intuitively a large number of classes and properties, resulting from highly interconnected datasets. Nevertheless, the authors believe QuizRDF provides a more intuitive and familiar way of searching and browsing for semantic information, compared to a traditional search engine or browser tool.", "Generic", "Browsers and exploratory", "https://i.imgur.com/gxU4grK.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (8, "DBin", 2006, "DBin is a tool for contributing and exploring the Semantic Web by exchanging data in P2P channels. DBin is a tool that allows users to browse data of different domains, and each domain is equipped with predefined settings for visualising, querying and annotating the data with the help of 'community configurable user interfaces', called Brainlets. A Brainlet defines which classes and relations between items are featured in DBin's tree layout navigator. This allows for the organisation of the information displayed to be targeted at the needs and common tasks of a certain domain. For each one of the instances displayed in the tree layout, the user is presented with a view with its relationships, properties, related images and metadata. To aid inexperienced users to query the data, a Brainlet provides predefined common and useful queries to the domain, these are entitled as 'precooked queries'. Finally, to author and share the data, Brainlet lets its creator define custom domain dependent annotation templates, simple or more complex, and keep track of the annotations authors. No formal evaluation was conducted. However, DBin was compared to similar tools, and according to the authors stands out as an end user centred Semantic Web application.", "Generic", "Full-featured", "https://i.imgur.com/vfo0SOP.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (9, "MuseumFinland", 2005, "MuseumFinland is a semantic portal for publishing heterogeneous museum collections in the Semantic Web. This application provides its users with several features, such as a global view of the collections, a content-based information retrieval system, and semantically linked and browsable content. Regarding the search features, MuseumFinland is equipped with a multi-faceted search system, that organises the resources in categories, as well as a simple keyword-based and geographical search. Additionally to helping the user perform search tasks, the categories used in the faceted search provide an overview of the kind of information present in the system, and can be used as a way of browsing the collections. When selecting an instance in a result list, the user is redirected to a global view of that instance, composed of the instance image, metadata, and a set of hyperlinks to semantically related instances. While no evaluation of the choices taken during the user interface design was conducted, the authors highlight that the user interface and user interaction logic were based on previous work, namely Flamenco's multi-faceted search.", "Museums", "Full-featured", "https://i.imgur.com/Ob9XVyV.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (10, "Piggy Bank", 2005, "Piggy Bank is a browser extension developed to provide users with ways of using Semantic Web content while exploring and browsing the web. The main feature of this tool is that it allows users to extract information from web pages and transform it into RDF data. Piggy Bank also allows the user to visualise, browse and search for the data that they have saved. Upon saving a retrieved item, considered as a RDF resource that belongs to a class, has property values, and other retrieved resources, the user can assign tags and keywords to it. The items of each tag are then organised in collections, and faceted-search can be performed using them. The visualisation provided by Piggy Bank in an instance view follows a very simple approach, displaying the property and their values in a table view.", "Generic", "Browsers and exploratory", "https://i.imgur.com/rY8KLYH.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (11, "Sampo-UI", 2020, "Sampo-UI is a software framework for developing customisable and responsive user interfaces for semantic portals. The authors started out by outlining the requirements for the user interfaces for Semantic Web applications, based on their experience in developing these semantic portals. The first requirement presented is providing the user with a variety of different ways of exploring the data, for this the authors highlight some search paradigms: free-text search, faceted search, geospatial search, and temporal search. Another requirement is providing the users with different views of the search results, in the form of tables, lists, geospatial, or temporal visualisations. The final requirement outlined is that the user interface should support semantic browsing, meaning semantic links should allow the users to browse through the dataset, from one instance's page to another. These instance pages are described as a landing page for an entity, providing information about its metadata, and internal and external links to other related entities. The development of Sampo-UI was based on these requirements and components to implement these features were developed. The resulting framework allows any developer to build a semantic portal that follows the previously described requirements and that is composed of three main types of pages: a landing page for the portal, where free-text search can be performed; a faceted search page; and customised entity landing pages for each different class in the application domain. The authors defend, based on their experience developing semantic portals, that the framework is viable, useful, and of easy use for developers wanting to create semantic portals for end-users.", "Generic", "Models and frameworks", "https://i.imgur.com/4s2saqL.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (12, "mSpace Model", 2003, "The mSpace model is an interaction model that can be used for interactions with Semantic Web applications. This model provides developers and designers with an intuitive and effective user interface that accommodates alternatives to the commonly used keyword search. Initially, the mSpace model was not developed for Semantic Web applications, but motivated by the lack of research in user interaction with Linked Data, the authors decided on the formalisation of mSpace as an interaction model for the Semantic Web. mSpace is focused on facilitating the interaction with Semantic Web data to perform user-determined exploration of a certain domain. The main advantage of the model developed is that it enables users to first understand the scope, relations, and entities of a certain domain, and then explore it following the direction best suited for their needs and interests. The organisation of the different classes and relations in the interface results from a flattened projection of the domain. The default visualisation of this model is a multi-column table view, where data classes are ordered from left to right. The users can then browse through the data selecting an instance in each column. By selecting sequentially one instance from each column, the instances are filtered according to their relations, this browsing mechanism allows the users to chose their path while navigating the domain. Additionally, to better accommodate the user interests, the classes presented in the table can be rearranged, or substituted by others. To complement the browsing approach, mSpace provides users with a detailed view for the last selected instance, that displays contextual information about it. While, the mSpace model for Semantic Web has not been formally evaluated, platforms like the previously presented CS AKTiveSpace, based on the mSpace model have had a positive feedback from users.", "Generic", "Models and frameworks", "https://i.imgur.com/NIGXc18.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (13, "PepeSearch", 2016, "PepeSearch is a Linked Data tool for searching semantic datasets, targeted at mainstream users, and thus requires no understanding or previous experience with Semantic Web data formats. PepeSearch provides its users with searching and instance visualisation features. Similar to other works, Pepesearch also allows its users to use a multi-faceted search, where they can apply different constraints to the data and object properties of all the classes in the dataset. The results are presented in a table with the values of all properties, and when an instance is selected the user is redirected to a page dedicated to that instance. In this page the data and object properties of the instance are displayed and the user can follow the links to the pages of the related instances. To evaluate the usability of the interface developed, a usability questionnaire was conducted with participants with no previous experience in Linked Data. The results showed the interface had a higher usability score when compared to similar tools, and proved common web users are able to perform, without previous training, non-trivial search tasks using PepeSearch.", "Generic", "Browsers and exploratory", "https://i.imgur.com/Wd0j2rN.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (14, "RDF Surveyor", 2019, "The development of RDF Surveyor was motivated by the lack of simple and intuitive solutions for user interfaces capable of being used by lay users to explore RDF data. The tool was developed to provide mechanisms to explore RDF datasets that hide the complex details of this kind of data. RDF Surveyor allows its users to navigate and explore the dataset, visualise an instance and search using a facet-based approach and a keyword-based approach. In the page of an instance the class types, data properties and related individuals are displayed, when applicable a picture and a map view are also provided. The user can follow the links of the related instances to semantically browse the dataset. The interface usability was evaluated through a questionnaire, involving 14 participants. However, only 4 of the 14 did not have previous experience with Linked Data, so we believe that the usability scores do not provide information about the intuitiveness of the platform for lay users. Even though most of the participants commented the tool was easy to use, RDF Surveyor's usability score was considered low when compared to similar tools. As expected, the participants with previous experience with Linked Data rated the interface higher than those with no experience. Nonetheless, it is considered as a valid and practical solution for exploring and navigating Linked Data datasets.", "Generic", "Full-featured", "https://i.imgur.com/MwK2D6V.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (15, "The Information Workbench", 2011, "The Information Workbench is a platform that supports the whole development process of developing a Linked Data application. Here, we will be focused on reviewing the options and chosen solutions for the user interface design. Firstly, the platform supports the implementation of basic a keyword search, as well as graph pattern search and faceted search. The Information Workbench provides the developers with a wide range of different visualisation widgets to accommodate the highly heterogeneity of Linked Data datasets. For a set of instances or resources views like maps, lists, timelines, and graphs are provided. For a single instance information can be consulted in a generic textual view, tabular view, or graph view, where only the neighbourhood of the instance selected is displayed. In all these visualisation options the user can semantically browse the dataset by clicking in the related instances hyperlinks. Additionally to searching, visualising and browsing the data, users are provided with simple widgets to edit and annotate the presented data. All in all, the Information Workbench provides developers with easy to implement widgets that provide users with visualisation techniques and search solutions commonly present in other Linked Data tools, like the ones previously presented. Even though this tool accommodates many dataset characteristics, with the use of the Information Workbench platform we cannot guarantee the best options are chosen for all data.", "Generic", "Models and frameworks", "https://i.imgur.com/PJuYFDO.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (16, "RelFinder", 2009, "RelFinder takes on a different approach than other browsing focused Linked Data tools. RelFinder's goal is to extract a graph that covers all the relationships between two predefined objects, and present it to the user. To this very simple graph visualisation, some interactive features were implemented to reduce the number of nodes and relations displayed. To start using this tool the user must select the two main objects using a basic keyword search, then the tool displays the graph connecting these two options. To filter the displayed relationships and nodes, users can select a subset according to their length or the classes they belong to, allowing them to better cater the visualisation to their interests and needs. Finally, if a node is selected in the graph, a simple visualisation of the instance information is displayed, this includes an image, short description and classes it belongs to. While the approach taken in RelFinder can fulfil some of the needs of common web users, we believe it does not cover all use cases, nor is generic enough to be a solution capable of being implemented and integrated in every Linked Data application. One of its limitations is the inability to browse to a different part of the dataset not encompassed in relations between the two main objects.", "Generic", "Browsers and exploratory", "https://i.imgur.com/hmbeWMH.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (17, "Ozone Browser", 2009, "Ozone Browser is a tool to make use of the semantics embedded in web documents in order to improve the experience of the users while browsing the web. The Ozone Browser is a graphical overlay that provides contextual knowledge of the hyperlinks in a web document. Regarding its user interface, Ozone Browser dynamically generates different views according to the domain of the RDF data presented. The default visualisation is composed of the RDF triples and related entities, if geographical data is available a map view is presented.", "Generic", "Browsers and exploratory", "https://i.imgur.com/sYTDkpi.png");
INSERT INTO Work (id, name, year, description, domain, type, img) VALUES (18, "Filter/Flow", 2014, "The approach for visual SPARQL queries based on filter/flow graphs was developed for users with no knowledge or experience with RDF data to be able to create complex queries and obtain in-depth knowledge. This approach is composed of filters on the data or object properties of the data, that are connected as a graph. These filters include restrictions on ordinal values and strings, or resource identifiers. This tool underwent a qualitative user evaluation to assess the users ability to comprehend and compose SPARQL queries. While the results show that most users were able to quickly complete the tasks, half of the participants already had previous basic knowledge of Semantic Web technologies. With these results we cannot be sure the tool is suited for users with no experience with Linked Data. Nonetheless the nature of the filter/flow graphs approach results in a complex and odd shaped interface, that we believe not suitable for a generic Linked Data", "Generic", "Browsers and exploratory", "https://i.imgur.com/Iutl6cP.png");

-- Table: Visualisation

INSERT INTO Visualisation (id, type) VALUES (1, "Textual");
INSERT INTO Visualisation (id, type) VALUES (2, "Map");
INSERT INTO Visualisation (id, type) VALUES (3, "Calendar");
INSERT INTO Visualisation (id, type) VALUES (4, "Table");
INSERT INTO Visualisation (id, type) VALUES (5, "Graph");
INSERT INTO Visualisation (id, type) VALUES (6, "List");
INSERT INTO Visualisation (id, type) VALUES (7, "Tree");
INSERT INTO Visualisation (id, type) VALUES (8, "Timeline");

-- Table: InteractiveFeature

INSERT INTO InteractiveFeature (id, type) VALUES (1, "Exploration/Navigation");
INSERT INTO InteractiveFeature (id, type) VALUES (2, "Visualisation");
INSERT INTO InteractiveFeature (id, type) VALUES (3, "Search");
INSERT INTO InteractiveFeature (id, type) VALUES (4, "Author/Edit");

-- Table: SearchSolution

INSERT INTO SearchSolution (id, type) VALUES (1, "Facet-based");
INSERT INTO SearchSolution (id, type) VALUES (2, "Keyword-based");
INSERT INTO SearchSolution (id, type) VALUES (3, "Predefined queries");
INSERT INTO SearchSolution (id, type) VALUES (4, "Geographical");
INSERT INTO SearchSolution (id, type) VALUES (5, "Temporal");

-- Table: Evaluation

INSERT INTO Evaluation (id, type) VALUES (1, "None");
INSERT INTO Evaluation (id, type) VALUES (2, "Qualitative");
INSERT INTO Evaluation (id, type) VALUES (3, "Quantitative");

-- Table: SingleVisualisation

INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (1, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (2, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (3, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (4, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (5, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (5, 2);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (5, 3);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (7, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (8, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (9, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (10, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (11, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (12, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (13, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (14, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (14, 2);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (15, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (15, 4);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (15, 5);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (16, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (17, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (17, 2);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (18, 1);
INSERT INTO SingleVisualisation (idWork, idVisualisation) VALUES (18, 5);

-- Table: SetVisualisation

INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (1, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (1, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (1, 2);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (2, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (2, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (2, 7);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (2, 2);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (2, 8);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (3, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (4, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (5, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (5, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (6, 7);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (7, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (8, 7);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (9, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (10, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (10, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (11, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (11, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (11, 2);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (11, 8);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (12, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (13, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (14, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (15, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (15, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (15, 2);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (15, 8);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (16, 6);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (16, 4);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (16, 2);
INSERT INTO SetVisualisation (idWork, idVisualisation) VALUES (16, 8);

-- Table: InteractiveFeatureWork

INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (1, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (1, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (2, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (2, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (2, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (3, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (3, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (3, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (3, 4);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (4, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (4, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (4, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (4, 4);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (5, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (5, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (5, 4);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (6, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (6, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (7, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (7, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (7, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (8, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (8, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (8, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (8, 4);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (9, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (9, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (9, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (10, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (10, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (10, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (11, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (11, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (11, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (12, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (12, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (13, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (13, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (14, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (14, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (14, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (15, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (15, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (15, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (15, 4);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (16, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (16, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (16, 3);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (17, 1);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (17, 2);
INSERT INTO InteractiveFeatureWork (idWork, idFeature) VALUES (18, 3);

-- Table: SearchSolutionWork

INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (2, 3);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (3, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (4, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (5, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (5, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (6, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (7, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (8, 3);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (9, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (9, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (9, 4);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (10, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (11, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (11, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (11, 3);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (11, 4);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (12, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (13, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (14, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (14, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (15, 1);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (15, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (16, 2);
INSERT INTO SearchSolutionWork (idWork, idSearchSolution) VALUES (18, 1);

-- Table: EvaluationWork

INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (1, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (2, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (3, 2, "Satisfaction Study", 71);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (3, 3, "User Study", 71);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (4, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (5, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (6, 2, "User Study", 28);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (7, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (8, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (9, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (10, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (11, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (12, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (13, 3, "Usability Study", 15);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (14, 3, "Usability Study", 14);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (15, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (16, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (17, 1, null, null);
INSERT INTO EvaluationWork (idWork, idEvaluation, type, numberParticipants) VALUES (18, 2, "User Study", 10);









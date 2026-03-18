-- Blog database schema for bx-simple-blog

CREATE TABLE IF NOT EXISTS posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  slug TEXT NOT NULL UNIQUE,
  body TEXT NOT NULL,
  posted TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Sample blog posts
INSERT OR IGNORE INTO  posts (title, slug, body, posted) VALUES
(
  'Welcome to BoxLang',
  'welcome-to-boxlang',
  'Today marks an exciting new chapter as we launch this blog built entirely with BoxLang! BoxLang is a modern, dynamic JVM language that brings the power of CFML to the modern age. In this post, we''ll explore what makes BoxLang special and why you should consider it for your next project.

BoxLang combines the simplicity of CFML with modern language features, making it perfect for rapid web development. Whether you''re building APIs, web applications, or microservices, BoxLang has you covered.',
  datetime('now', '-7 days')
),
(
  'Getting Started with BoxLang Modules',
  'getting-started-with-boxlang-modules',
  'Modules are one of the most powerful features in BoxLang. They allow you to extend the language with additional functionality, from ORM capabilities to advanced caching systems.

In this tutorial, we''ll walk through how to install and use BoxLang modules in your projects. We''ll cover the basics of the module system, how to configure modules in your boxlang.json file, and best practices for module development.

Stay tuned for more advanced topics in upcoming posts!',
  datetime('now', '-5 days')
),
(
  'Building REST APIs with BoxLang',
  'building-rest-apis-with-boxlang',
  'REST APIs are the backbone of modern web applications. BoxLang makes it incredibly easy to build robust, scalable APIs with minimal code.

In this post, we''ll create a simple REST API that handles CRUD operations. We''ll cover routing, request handling, JSON serialization, and proper HTTP status codes. By the end, you''ll have a fully functional API that you can use as a template for your own projects.

BoxLang''s built-in functions make working with JSON and HTTP a breeze!',
  datetime('now', '-3 days')
),
(
  'Database Access in BoxLang',
  'database-access-in-boxlang',
  'BoxLang provides multiple ways to interact with databases, from simple queries to full ORM support. In this post, we''ll explore the different approaches and when to use each one.

We''ll start with basic query syntax using the bx:query tag, then move on to queryExecute() for more dynamic queries. We''ll also touch on parameterized queries and how they help prevent SQL injection attacks.

Whether you''re working with MySQL, PostgreSQL, or SQLite, BoxLang has you covered!',
  datetime('now', '-1 day')
),
(
  'BoxLang vs CFML: What''s New?',
  'boxlang-vs-cfml-whats-new',
  'If you''re coming from CFML, you might be wondering what makes BoxLang different. While BoxLang maintains compatibility with most CFML code, it also introduces many modern features and improvements.

Key differences include enhanced module support, improved performance through JIT compilation, better Java interop, and a more modern standard library. BoxLang also introduces new syntax options while maintaining backward compatibility with existing CFML code.

In this post, we''ll dive deep into the improvements and show you why BoxLang represents the future of CFML development.',
  datetime('now')
);

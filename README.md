# Assignment-7

## **1. What is PostgreSQL?**

PostgreSQL হলো একটি ওপেন-সোর্স, অবজেক্ট-রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (ORDBMS)। এটি SQL এবং JSON-এর মতো ডাটা ফরম্যাট সমর্থন করে এবং ACID (Atomicity, Consistency, Isolation, Durability) কমপ্লায়েন্ট। এটি ডাটা ইন্টিগ্রিটি, এক্সটেনসিবিলিটি, ও পারফরম্যান্সের জন্য জনপ্রিয়।

## **2. What is the purpose of a database schema in PostgreSQL?**

একটি স্কিমা হলো একটি লজিক্যাল স্ট্রাকচার যা ডাটাবেসের টেবিল, ভিউ, ইনডেক্স, ফাংশন, ও অন্যান্য অবজেক্ট সংরক্ষণ করতে ব্যবহৃত হয়। এটি ডাটাবেসের ডাটা সংগঠিত রাখতে এবং মাল্টিপল ইউজার বা অ্যাপ্লিকেশনের জন্য আলাদা আলাদা স্পেস সরবরাহ করতে সাহায্য করে।

## **3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.**

প্রাইমারি কি (Primary Key): এটি একটি টেবিলের এমন একটি কলাম যা প্রতিটি রেকর্ডের জন্য ইউনিক আইডেন্টিফায়ার হিসেবে কাজ করে এবং কখনও NULL হতে পারে না।

ফরেন কি (Foreign Key): এটি একটি টেবিলের এমন একটি কলাম যা অন্য একটি টেবিলের প্রাইমারি কি রেফারেন্স করে। এটি ডাটাবেসের রিলেশনশিপ তৈরি করে এবং ডাটা ইন্টিগ্রিটি বজায় রাখে।

## **4. What is the difference between the VARCHAR and CHAR data types?**

VARCHAR: এটি পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং সংরক্ষণ করে এবং নির্দিষ্ট সীমার মধ্যে ডাটা সংরক্ষণ করে, যা স্টোরেজের ক্ষেত্রে বেশি কার্যকরী।

CHAR: এটি নির্দিষ্ট দৈর্ঘ্যের স্ট্রিং সংরক্ষণ করে এবং ছোট ডাটা হলে অবশিষ্ট জায়গা ফাঁকা রাখা হয়, যা স্টোরেজ অপচয় করতে পারে।

## **5. Explain the purpose of the WHERE clause in a SELECT statement.**

WHERE ক্লজ ব্যবহার করে নির্দিষ্ট শর্ত অনুযায়ী রেকর্ড ফিল্টার করা যায়। এটি ডাটাবেস কোয়েরির ফলাফলকে সীমাবদ্ধ করতে সাহায্য করে। যেমন:

- `SELECT * FROM users WHERE age > 25;`

## **6. What are the LIMIT and OFFSET clauses used for?**

- `LIMIT`: এটি নির্দিষ্ট সংখ্যক রেকর্ড রেস্পন্স পাঠাতে ব্যবহৃত হয়।
- `OFFSET`: এটি শুরু থেকে নির্দিষ্ট সংখ্যক রেকর্ড বাদ দিয়ে পরবর্তী রেকর্ড রেস্পন্স পাঠাতে ব্যবহৃত হয়।

## **7. How can you modify data using UPDATE statements?**

UPDATE স্টেটমেন্ট নির্দিষ্ট শর্তের ভিত্তিতে ডাটাবেসের রেকর্ড পরিবর্তন করতে ব্যবহৃত হয়। যেমনঃ

- `UPDATE employees SET salary = 50000 WHERE id = 3;`

## **8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?**

JOIN অপারেশন একাধিক টেবিলের ডাটা একত্রিত করতে ব্যবহৃত হয়। এটি ডাটাবেসের রিলেশনশিপ ব্যবহার করে সংযুক্ত তথ্য পুনরুদ্ধার করতে সাহায্য করে। PostgreSQL-এ বিভিন্ন JOIN আছে:

- `INNER JOIN`: শুধুমাত্র মিলে যাওয়া রেকর্ড রেসপন্স দেয়।
- `LEFT JOIN`: বাম টেবিলের সব রেকর্ড এবং ডান টেবিলের মিলে যাওয়া রেকর্ড রেসপন্স দেয়।
- `RIGHT JOIN`: ডান টেবিলের সব রেকর্ড এবং বাম টেবিলের মিলে যাওয়া রেকর্ড রেসপন্স দেয়।
- `FULL JOIN`: উভয় টেবিলের সব রেকর্ড রেসপন্স দেয়।

## **9. Explain the GROUP BY clause and its role in aggregation operations.**

GROUP BY ক্লজ একই ধরনের ডাটা গ্রুপ করতে ব্যবহৃত হয় এবং এটি সাধারণত অ্যাগ্রিগেট ফাংশনের সাথে ব্যবহৃত হয়।

## **10. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL?**

- `COUNT()`: মোট রেকর্ডের সংখ্যা গণনা করে।
- `SUM()`: নির্দিষ্ট কলামের মানের যোগফল প্রদান করে।
- `AVG()`: নির্দিষ্ট কলামের গড় মান প্রদান করে।

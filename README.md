![V A D A P A V](https://user-images.githubusercontent.com/57487500/94778619-3e24f100-03e3-11eb-8070-48651f2f29e1.jpg)

<br>



## Process Workflow :

![Screenshot_20201206-150933](https://user-images.githubusercontent.com/57487500/101276780-4cbdc900-37d5-11eb-8f9b-047223d61d2d.jpg)




## Database Design :

![image_2020-12-06_15-14-38](https://user-images.githubusercontent.com/57487500/101276843-d9688700-37d5-11eb-83fe-239a29473a83.png)


![image_2020-12-06_15-17-46](https://user-images.githubusercontent.com/57487500/101276929-7e835f80-37d6-11eb-9e18-572ab07adf99.png)















## Webpage Snapshots :


![img1](https://user-images.githubusercontent.com/57487500/101277061-94455480-37d7-11eb-9e72-c9e5d84e4ff2.png)


![img2](https://user-images.githubusercontent.com/57487500/101277058-914a6400-37d7-11eb-81ea-567f36bc2d20.png)


![img3](https://user-images.githubusercontent.com/57487500/101277059-927b9100-37d7-11eb-8fda-2de7585dc8b5.png)


![img4](https://user-images.githubusercontent.com/57487500/101277060-93142780-37d7-11eb-8fe0-662dff3e9568.png)



# VIT Alumni Directory Web app 
A Node.js + MongoDB backend for managing and visualizing alumni performance data from VIT.

---

## 🚀 Features

- JWT-based admin authentication
- RESTful API for alumni CRUD operations
- MongoDB schema for alumni and user
- Seed script to populate sample data

---

## 🧰 Tech Stack

- Node.js
- Express.js
- MongoDB + Mongoose
- JWT Authentication
- Dotenv + CORS

---

## 📦 Installation & Setup

### 1. Clone the repository
```bash
git clone https://github.com/yourusername/vit-alumni-backend.git
cd vit-alumni-backend
```

### 2. Install dependencies
```bash
npm install express mongoose cors dotenv jsonwebtoken
```

### 3. Set up environment variables
Create a `.env` file in the root directory:
```env
MONGO_URI=mongodb://localhost:27017/vit_alumni
JWT_SECRET=your_secret_key
```

### 4. Start MongoDB
Make sure MongoDB is running locally:
```bash
mongod
```

### 5. Seed the database with dummy alumni
```bash
node seed.js
```

### 6. Start the server
```bash
node server.js
```
Server will run on `http://localhost:5000`

---

## 📂 File Structure

```
├── models
│   ├── Alumni.js        # Alumni schema
│   └── User.js          # Admin user schema
├── seed.js              # Seeds sample alumni data
├── server.js            # Main Express server
├── .env                 # Environment variables
└── README.md            # This file
```

---

## 🔐 Authentication

Login Route: `POST /api/login`
```json
{
  "username": "admin",
  "password": "admin123"
}
```

The server returns a JWT token to use in `Authorization` headers:
```
Authorization: Bearer <your_token>
```

---

## 📬 API Endpoints

| Method | Endpoint         | Description              | Protected |
|--------|------------------|--------------------------|-----------|
| GET    | `/api/alumni`    | Fetch all alumni         | ❌        |
| POST   | `/api/alumni`    | Add new alumni           | ✅        |
| POST   | `/api/login`     | Login and get JWT token  | ❌        |

---

## 📈 Future Features
- Export alumni stats
- Search and filter by CGPA, company
- Admin panel frontend integration

---






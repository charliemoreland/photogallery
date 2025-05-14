from flask_sqlalchemy import SQLAlchemy

# Initialize the db object
db = SQLAlchemy()

# Define your database models
class ForSale(db.Model):
    __tablename__ = 'ForSale'
    ID = db.Column(db.Integer, primary_key=True)
    Type = db.Column(db.String(50))
    YearBuilt = db.Column(db.Integer)
    MakeModel = db.Column(db.String(100))
    Color = db.Column(db.String(50))
    SubType = db.Column(db.String(50))
    ItemCondition = db.Column(db.String(50))
    Price = db.Column(db.Numeric(10, 2))
    Description = db.Column(db.Text)
    City = db.Column(db.String(100))
    PhoneNumber = db.Column(db.String(20))

class Housing(db.Model):
    __tablename__ = 'Housing'
    ID = db.Column(db.Integer, primary_key=True)
    Type = db.Column(db.String(50))
    YearBuilt = db.Column(db.Integer)
    MakeModel = db.Column(db.String(100))
    Color = db.Column(db.String(50))
    SubType = db.Column(db.String(50))
    ItemCondition = db.Column(db.String(50))
    Price = db.Column(db.Numeric(10, 2))
    Description = db.Column(db.Text)
    City = db.Column(db.String(100))
    PhoneNumber = db.Column(db.String(20))
    Bedrooms = db.Column(db.Integer)
    Bathrooms = db.Column(db.Integer)
    SquareFeet = db.Column(db.Integer)
    LotSize = db.Column(db.Numeric(10, 2))

class Services(db.Model):
    __tablename__ = 'Services'
    ID = db.Column(db.Integer, primary_key=True)
    Type = db.Column(db.String(50))
    YearStarted = db.Column(db.Integer)
    MakeModel = db.Column(db.String(100))
    Color = db.Column(db.String(50))
    SubType = db.Column(db.String(50))
    ItemCondition = db.Column(db.String(50))
    Price = db.Column(db.Numeric(10, 2))
    Description = db.Column(db.Text)
    City = db.Column(db.String(100))
    PhoneNumber = db.Column(db.String(20))
    Availability = db.Column(db.String(100))
    ExperienceYears = db.Column(db.Integer)

class Jobs(db.Model):
    __tablename__ = 'Jobs'
    ID = db.Column(db.Integer, primary_key=True)
    Type = db.Column(db.String(50))
    YearStarted = db.Column(db.Integer)
    Title = db.Column(db.String(100))
    SubType = db.Column(db.String(50))
    ItemCondition = db.Column(db.String(50))
    Price = db.Column(db.Numeric(10, 2))
    Description = db.Column(db.Text)
    City = db.Column(db.String(100))
    PhoneNumber = db.Column(db.String(20))
    Availability = db.Column(db.String(100))
    ExperienceYears = db.Column(db.Integer)

const express = require("express");
const articles = require('./article-model');

const router = express.Router();


router.get("/", async (req, res) => {
  try {
    const article = await articles.find();
    res.json(article);
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: 'error with db', error: err });
  }
});

router.get("/:id", async (req, res) => {
  const { id } = req.params;

  try {
    const article = await articles.findById(id);
    if (article) {
      res.json(article);
    } else {
      res.status(404).json({ message: 'invalid id' });
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: 'error with db', error: err });
  }
});



router.post("/", async (req, res) => {
  const articleData = req.body;
  try {
    const newArticle = await articles.add(articleData);
    res.json(newArticle);
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: 'error with db', error: err });
  }

});

router.put("/:id", async (req, res) => {
  const { id } = req.params;
  const changes = req.body;

  try {
    const changedArticle = await articles.update(id, changes);
    if (changedArticle) {
      res.json(changedArticle);
    } else {
      res.status(404).json({ message: 'invalid id' });
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: 'error with db', error: err });
  }
});

router.delete("/:id", async (req, res) => {
  const { id } = req.params;

  try {
    const count = await articles.remove(id);
    if (count) {
      res.json({ message: `deleted ${count} records` });
    } else {
      res.status(404).json({ message: 'invalid id' });
    }
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: 'error with db', error: err });
  }
});

module.exports = router;
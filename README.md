# SpamKiller


# What is the project about?
The problem of spam in large chats is common. Spam makes it difficult to communicate between people, search for the right information, which may eventually lead to people starting to leave the chat, because it will be impossible to be in it because of the abundance of spam.

By getting rid of spam in the chat, we will be able to make communication between people more comfortable, because it is unpleasant to correspond in the chat or search for information and often stumble upon fraudulent information about discounts of 90%, etc.

In general, the goal of this project is to reduce the amount of spam to a minimum, free administrators from routine viewing of the chat for spam, round-the-clock monitoring of the chat by a bot, timely decision-making on blocking the user and deleting spam.


# How does the bot work?
This version of the bot uses a primitive model based on heuristic rules. This is justified in order to start with a simple one and complicate the model step by step and understand whether it is worth spending human resources on developing a more complex model when a simpler model can cope with the task.

# Get Started
## Dependencies
* [DVC](https://dvc.org/doc/install)\
Install the required Python libraries and download the data:
```
pip install -r requirements.txt
dvc pull
```
## Environment Variables
* Specify the environment variables in `.env` file:
  - `API_KEY_SPAM_KILLER`: Bot Token
  - `TARGET_GROUP_ID`: Target group's ID
  - `TARGET_SPAM_ID`: Target spam group's ID
  - `TARGET_NOT_SPAM_ID`: Target not spam group's ID
  - `ADMIN_IDS`: User IDs of admins
  - `WHITELIST_ADMINS`: Whitelist of admins

## Bot Starting
* Start the bot by running bash-script:
```
bash run_spamkiller.sh
```

# Project structure
The following structure is used in this project:
1. `app module`: contains the main code of the project,
    - `app.py ` - the main file in which the bot is launched

2. `data module`: not available in the public version

3. `logs module`: contains project logs,
    - `logs_from_bot.log` - the main log file in which all the actions of the bot are recorded (not available in the public version);
    - `temp_list_with_new_user.json` is a temporary file to which the user is added until he sends his first message to the chat

4. `scripts module`: contains scripts for working with data,
    - `data.py` - performs data cleaning
    - `make_metrics.py` - calculates the quality metrics of the model
    - `not_spam_id.py` - generate a CSV file with the not spam IDs
    - `predict_spam_scores.py` - makes predictions from the model
    - `watching.py` - in development
5. `src module`: contains the source code
    - `data module`
        * `data.py` - source code for data cleaning
    - `metrics module`
        * `metrics.py` - source code for calculating the quality metrics of the model
    - `models module`
        * `logistic_regression.py` - source code for the LogisticRegression model
        * `rules_base_model_prod.py` - source code for the RuleBasedClassifier model used in production
        * `rules_base_model_validation.py` - source code for the RuleBasedClassifier model for validation
    - `add_new_user_id.py` - source code for adding a new user to the temporary file
    - `commands.py` - source code for bot commands
    - `send_messages.py` - source code for sending messages to admins and a group


# The main tools used in the project
![Pyhon](https://img.shields.io/badge/-Python_3.10.8-090909?style=for-the-badge&logo=python) ![Aiogram](https://img.shields.io/badge/-Aiogram_2.25.1-090909?style=for-the-badge&logo=Aiogram)       ![Pandas](https://img.shields.io/badge/-pandas_1.3.0-090909?style=for-the-badge&logo=pandas) ![Numpy](https://img.shields.io/badge/-Numpy_1.21.1-090909?style=for-the-badge&logo=Numpy) ![Loguru](https://img.shields.io/badge/-Loguru_1.6.1-090909?style=for-the-badge&logo=xgboost) ![Pylint](https://img.shields.io/badge/-Pylint_2.10.0-090909?style=for-the-badge&logo=Pylint)

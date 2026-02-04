resource "aws_iam_user" "users1" {
  name = "jenny"
}

resource "aws_iam_user" "users2" {
    depends_on = [aws_iam_user.users1]
  name = "rose"
}

resource "aws_iam_user" "users3" {
    depends_on = [aws_iam_user.users2]
  name = "lisa"
}

resource "aws_iam_user" "users4" {
    depends_on = [aws_iam_user.users3]
  name = "jisoo"
}

resource "aws_iam_user" "users5" {
  name = "jihyo"
}

resource "aws_iam_user" "users6" {
    depends_on = [aws_iam_user.users1, aws_iam_user.users5]
  name = "sana"
}

resource "aws_iam_user" "users7" {
  name = "miyeon"
}

resource "aws_iam_user" "users8" {
  name = "mina"
}

import {
  to = aws_iam_user.users7
  id = "miyeon"
}

import {
  to = aws_iam_user.users8
  id = "mina"
}
resource "aws_iam_user" "users1" {
  name = "jenny"
}

resource "aws_iam_user" "users2" {
  name = "rose"
}

resource "aws_iam_user" "users3" {
  name = "lisa"
}

resource "aws_iam_user" "users4" {
  name = "jisoo"
}

resource "aws_iam_user" "users5" {
  name = "jihyo"
}

resource "aws_iam_user" "users6" {
  name = "sana"
}

resource "aws_iam_user" "users7" {
  name = "momo"
}

resource "aws_iam_user" "users8" {
  name = "dahyun"
}

resource "aws_iam_group" "group1" {
  name = "blackpink"
}

resource "aws_iam_group" "group2" {
  name = "twice"
}

resource "aws_iam_group_membership" "team1" {
  name = "tf-testing-group-membership1"

  users = [
    aws_iam_user.users1.name,
    aws_iam_user.users2.name,
    aws_iam_user.users3.name,
    aws_iam_user.users4.name,
  ]

  group = aws_iam_group.group1.name
}

resource "aws_iam_group_membership" "team2" {
  name = "tf-testing-group-membership2"

  users = [
    aws_iam_user.users5.name,
    aws_iam_user.users6.name,
    aws_iam_user.users7.name,
    aws_iam_user.users8.name,
  ]

  group = aws_iam_group.group2.name
}
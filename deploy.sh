#!/bin/bash
# ============================================
# 🎄 Скрипт публикации новогоднего квеста
# ============================================
# Использование:
#   1. Замените YOUR_USERNAME на ваш логин GitHub
#   2. Замените REPO_NAME на имя репозитория (по умолчанию new-year-quest)
#   3. Запустите: bash deploy.sh
# ============================================

YOUR_USERNAME="YOUR_USERNAME"   # ← замените на ваш логин GitHub
REPO_NAME="new-year-quest"      # ← имя репозитория

echo "🎄 Публикуем новогодний квест..."
echo ""

# Инициализация git
git init
git add .
git commit -m "🎄 Новогодний квест 2026"
git branch -M main

# Создание репозитория на GitHub (нужен GitHub CLI: https://cli.github.com)
echo "📦 Создаём репозиторий на GitHub..."
gh repo create "$REPO_NAME" --public --source=. --push

echo ""
echo "✅ Код загружен!"
echo ""
echo "⏳ Теперь включите GitHub Pages:"
echo "   1. Откройте: https://github.com/$YOUR_USERNAME/$REPO_NAME/settings/pages"
echo "   2. Source → выберите 'GitHub Actions'"
echo "   3. Подождите 1-2 минуты"
echo ""
echo "🌐 Сайт будет доступен: https://$YOUR_USERNAME.github.io/$REPO_NAME/"

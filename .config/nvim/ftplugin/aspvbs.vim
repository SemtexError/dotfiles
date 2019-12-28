command! GenerateTags :! find -regex '.*\.\(asp\|exclude\)' -exec ctags --language-force=javascript {} +

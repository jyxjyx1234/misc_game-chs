PluginManager.setup($plugins_chs);

window.onload = function() {
    new Promise((resolve) => {
        window.selectLang = function(lang) {
            window.selectedLanguage = lang;
            customDialog.remove();
            resolve();
        };
        let message = "请选择语言";
        let customDialog = document.createElement('div');
        customDialog.style.cssText = 'position:fixed;top:50%;left:50%;transform:translate(-50%,-50%);background:white;padding:20px;border:1px solid black;';
        customDialog.innerHTML = `
            <p>${message.split('\n').join('<br>')}</p>
            <button onclick="window.selectLang('data_chs')">启动中文版</button>
            <button onclick="window.selectLang('data')">使用原版</button>
        `;
        document.body.appendChild(customDialog);
    }).then(() => {
        if (window.selectedLanguage === "data_chs") {
            alert("本补丁由jyxjyx1234制作，使用 Claude-3.7-sonnet 进行翻译，免费发布，首发御爱同萌（ai2.moe）、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可在御爱评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。");
            let oldLink = document.querySelector('link[href="fonts/gamefont.css"]');
            let newLink = document.createElement('link');
            newLink.rel = 'stylesheet';
            newLink.type = 'text/css';
            newLink.href = `fonts/gamefont_chs.css`;
            if (oldLink) {
                oldLink.parentNode.replaceChild(newLink, oldLink);
            }
        }
        SceneManager.run(Scene_Boot);
    });
};

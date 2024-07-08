const base = {
    get() {
        return {
            url : "http://localhost:8080/bank/",
            name: "bank",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/bank/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "银行账户管理系统"
        } 
    }
}
export default base

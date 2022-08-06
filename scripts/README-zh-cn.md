# Julia 脚本

## 日常做题
步骤：
1. `newsolution.jl <题号>` 生成预提交文件
2. 编写代码和测试
3. `submit.jl <题号>` 提交文件
4. `git add/commit` 保存文件变动

### 示例

1. 进入仓库目录
   ```bash
   cd LeetCode.jl
   ```

   当前目录结构
   ```bash
   # tree scripts
   scripts
   ├── newsolution.jl
   ├── README.md
   ├── README-zh-cn.md
   └── submit.jl
   ```

2. 生成习题 `1234` 的空白解
   ```bash
   scripts/newsolution.jl 1234
   ```

   当前目录结构
   ```bash
   scripts
   ├── newsolution.jl
   ├── presolution
   │   └── 1234.replace-the-substring-for-balanced-string.jl
   ├── README.md
   ├── README-zh-cn.md
   └── submit.jl
   ```

3. 编写代码和测试
   - 打开 `presolution/1234.replace-the-substring-for-balanced-string.jl`
   - 在 `@lc code=start` 和 `@lc code=end` 之间填入代码
   - 在 `@lc test=start` 和 `@lc test=end` 之间填入测试

4. 提交解答
   ```bash
   scripts/submit.jl 1234
   ```

   当前目录结构
   ```bash
   scripts
   ├── newsolution.jl
   ├── presolution
   │   └── 1234.replace-the-substring-for-balanced-string.jl
   ├── README.md
   ├── README-zh-cn.md
   ├── submit
   │   ├── problems
   │   │   └── 1234.replace-the-substring-for-balanced-string.jl
   │   └── tests
   │       └── 1234.replace-the-substring-for-balanced-string.jl
   └── submit.jl
   ```

5. 执行 `git add/commit` 提交解答

### 注释说明

1. 初始配置：
 - 首次运行 `newsolution.jl` 将在 `LeetCode.jl/scripts` 目录下生成 `.config` 文件，记录 `author` 信息
 - 若 `author` 设置为空，后续提交将不包含作者 `author` 一栏
 - 可手动修改 `.config` 或删除

2. 执行命令 `newsolution.jl <问题索引>` 时
   - 若该问题已存在解答，抛出错误并退出
   - 若该题不在仓库，抛出错误并退出
   - 若问题存在且未被解答，则在 `scripts/presolution` 中生成“预提交文件”，内容如下
    ```jl
    ## ... 作者，日期，问题正文 ...
    ## @lc code=start
    using LeetCode

    ## @lc code=end
    ## @lc test=start
    using Test
    @testset "1234.replace-the-substring-for-balanced-string.jl" begin
        @test 
    end
    ## @lc test=end
    ```
    注：为方便测试，预提交将代码和测试写在同一文件

3. 执行命令 `submit.jl <问题索引>` 时
   - 读取文件 `scripts/presolution/<对应问题>`
   - 在 `scripts/submit/problems` 目录下生成代码文件
   - 在 `scripts/submit/tests` 目录下生成测试文件
   - 删除文件 `src/unresolved/<对应问题>`
   - 新增文件 `src/problems/<对应问题>, test/problems/<对应问题>`

4. 文件(夹) `presolution/, submit/, .config` 均被 `.gitignore` 忽略
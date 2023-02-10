[//]: # (title: Code blocks)

Create multiline code blocks by placing triple backticks before and after the code example.

Optionally, specify the language name after the opening block to enable syntax highlighting. 

<table>
<tr>
<td>Markup</td>
<td>Result</td>
</tr>
<tr>
<td>
<code-block lang="plain text">
```java
class Main {
public static void main(String[] args) {
                    System.out.println("Enter two numbers");
                    int first = 10;
                    int second = 20;

System.out.println(first + " " + second);

// add two numbers
int sum = first + second;
System.out.println("The sum is: " + sum);
}
}
\```
</code-block>
</td>
<td>
<code-block lang="java">
class Main {

public static void main(String[] args) {

System.out.println("Enter two numbers");
int first = 10;
int second = 20;
System.out.println(first + " " + second);
// add two numbers
int sum = first + second;
System.out.println("The sum is: " + sum);
}
}
</code-block>
</td>
</tr>
</table>

Enhance the code block by placing the following attributes in the curly brackets after the block:
* collapsible
* default-state
* collapsed-title
* collapsed-title-line-number
* src 
* include-lines
* include-symbol
* prompt
* show-white-spaces 
* validate 
* disable-links

## Make block collapsed

To make the code block collapsible, add the <code>collapsible="true"</code> attribute to the code block.

By default, it will be collapsed, to make it expanded add <code>default-state="collapsed"</code> attribute.

By default, the first line of the code snippet is used as a title. 

Change it by adding the `collapsed-title` attribute with a custom value 
or add the `collapsed-title-line-number` attribute to specify the line to use as the title.

<table>
<tr>
<td>Markup</td>
<td>Result</td>
</tr>
<tr>
<td>
<code-block noinject="true" lang="plain text">
```
class Main {

public static void main(String[] args) {

System.out.println("Enter two numbers");
int first = 10;
int second = 20;

System.out.println(first + " " + second);

// add two numbers
int sum = first + second;
System.out.println("The sum is: " + sum);
}
}
\```
{collapsible="true" default-state="expanded" collapsed-title="Title to display when a block is collapsed"}
</code-block>
</td>
<td>
<code-block collapsible="true" lang="java" default-state="expanded" 
collapsed-title="Title to display when a block is collapsed">

class Main {

public static void main(String[] args) {

System.out.println("Enter two numbers");
int first = 10;
int second = 20;

System.out.println(first + " " + second);

// add two numbers
int sum = first + second;
System.out.println("The sum is: " + sum);
}
}
</code-block>
</td>
</tr>
<tr>
<td>
<code-block noinject="true" lang="plain text">
```
class Main {

public static void main(String[] args) {

System.out.println("Enter two numbers");
int first = 10;
int second = 20;

System.out.println(first + " " + second);

// add two numbers
int sum = first + second;
System.out.println("The sum is: " + sum);
}
}
\```
{collapsible="true" default-state="expanded" collapsed-title-line-number="5"}
</code-block>
</td>
<td>
<code-block collapsible="true" lang="java" default-state="expanded" collapsed-title-line-number="5">
class Main {

public static void main(String[] args) {

System.out.println("Enter two numbers");
int first = 10;
int second = 20;

System.out.println(first + " " + second);

// add two numbers
int sum = first + second;
System.out.println("The sum is: " + sum);
}
}
</code-block>
</td>
</tr>
</table>

## Include a block from another folder {id="include-from-another-folder"}

To include content from other files, use `src` attribute and specify the filename.

The source file must be located under the `codeSnippets` directory.

To specify a specific line range or comma-separated list to include, use `include-lines` attribute.

To specify a specific code construct, like, method or class, use `include-symbol` attribute.

<table>
            <tr>
                <td>Markup</td>
                <td>Result</td>
            </tr>
            <tr>
                <td>
                    <code-block lang="plain text">
                        ```kotlin
                        ```
                        {src="newTest.kt" include-lines="2-4"}
                    </code-block>
                </td>
                <td>
                    <code-block lang="kotlin" src="newTest.kt" include-lines="2-4">
                        @Test
                        fun testSum() {
                        val expected = 42
                        assertEquals(expected, testSample.sum(40, 2))
                        }
                        }
                    </code-block>
                </td>
            </tr>
            <tr>
                <td>
                    <code-block lang="plain text">
                        ```kotlin
                        ```
                        {src="newTest.kt" include-symbol="testSum"}
                    </code-block>
                </td>
                <td>
                    <code-block src="newTest.kt" lang="kotlin" include-symbol="testSum">
                        @Test
                        fun testSum() {
                        val expected = 42
                        assertEquals(expected, testSample.sum(40, 2))
                        }
                        }
                    </code-block>
                </td>
            </tr>
        </table>

## Add prompt and highlight an indentation

To add a command line prompt at the beginning of each line in a code snippet, use `prompt` attribute.

The code sample is copied without the prompt. It is useful for shell script and command examples.

<table>
    <tr>
        <td>Markup</td>
        <td>Result</td>
    </tr>
    <tr>
        <td>
            <code-block lang="plain text">
                ```shell
                sudo tar -xzf the-package-*.tar.gz -C /opt
                ```
                {prompt="$"}
            </code-block>
        </td>
        <td>
                <code-block lang="Shell" prompt="$">
                    sudo tar -xzf the-package-*.tar.gz -C /opt
                </code-block>
        </td>
    </tr>
</table>


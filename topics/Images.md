[//]: # (title: Images)

Here's how you insert an image in Markdown: `![alt text](image.png "title")`.

Enhance the image by placing the following attributes in the curly brackets after the block:
* width
* border-effect

## Specify an image width

Use the `width` attribute you can specify the width of the image.
Its height will also be changed proportionally.

<table>
            <tr>
                <td width="50%">Markup</td>
                <td width="50%">Result</td>
            </tr>
            <tr>
                <td>
                    <code-block>
                        ![](sample-image-white.png) {width="250px"}
                    </code-block>
                </td>
                <td>
                    <img src="sample-image-white.png" alt="Sample image" width="250"/>
                </td>
            </tr>
</table>

## Change an image border style

To add a border to an image and specify its appearance,
use <code>border-effect</code> attribute with <code>line</code> or <code>rounded</code> as possible values.

<table>
            <tr>
                <td width="50%">Markup</td>
                <td width="50%">Result</td>
            </tr>
            <tr>
                <td>
                    <code-block>
                        ![](sample-image-white.png) {border-effect="line"}
                    </code-block>
                </td>
                <td>
                    <img src="sample-image-white.png" alt="Sample image" border-effect="line"/>
                </td>
            </tr>
</table>

## Referencing images

You can reference images that are declared in some other part of the topic, for example, the bottom.

For example, this can be handy for frequently used icons.

<table>
        <tr>
            <td width="50%">Markup</td>
            <td width="50%">Result</td>
        </tr>
        <tr>
        <td>
            <code-block>
            Click ![][check] icon to mark an item as done.
            [check]: check-icon.png
            [up]: up-icon.png
            [down]: down-icon.png
            [plus]: plus-icon.png
            </code-block>
        </td>
        <td>
            Click <img alt="check icon" src="check-icon.png" width="16"/> icon to mark an item as done.
        </td>
    </tr>
</table>
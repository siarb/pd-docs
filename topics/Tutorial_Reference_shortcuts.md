[//]: # (title: Tutorial: Reference shortcuts from the configuration file)

If your plugin relies on keyboard shortcuts, you can reference them in docs by IDs from the `keymap.xml` file
so that you won't need to manually specify a shortcut for each platform –
the user will be able to pick a desired one on top of the page.

<procedure>
    <include from="lib.topic" element-id="shortcuts-reference-by-id" use-filter="tutorial,empty"/>
    <step>Now reference the shortcut by a key in the topic:
    <code-block lang="xml">
        <![CDATA[
             <p>Press <shortcut key="$Configure"/> on any element that you need to configure, 
            and select <control>Show plugin popup</control>.</p>
        ]]>
    </code-block>
    <img src="shortcut-picker.gif" alt="A user picks a shortcut platform" preview-src="shortcut-picker-preview.png"/>
    </step>
</procedure>

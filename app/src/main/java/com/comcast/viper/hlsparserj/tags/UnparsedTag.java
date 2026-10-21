package com.comcast.viper.hlsparserj.tags;

import A.i;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class UnparsedTag {
    private static final String NONENCLOSEDQUOTES = ",(?=([^\"]*\"[^\"]*\")*[^\"]*$)";
    private static final Pattern TAGPATTERN = Pattern.compile("^#(EXT.*?):(.*)");
    private static final String URI_ATTR = "URI";
    private Map<String, String> attributes = new HashMap();
    private String rawTag;
    private String tagName;
    private String uri;

    public UnparsedTag() {
    }

    private void parseTagLine(String str) {
        Matcher matcher = TAGPATTERN.matcher(str);
        if (!matcher.find()) {
            this.tagName = str.substring(1);
            return;
        }
        this.tagName = matcher.group(1);
        int i2 = 0;
        for (String str2 : matcher.group(2).split(NONENCLOSEDQUOTES)) {
            String[] split = str2.split("=");
            if (split.length == 1) {
                this.attributes.put(i.f(i2, "NONAME"), split[0].replaceAll("^\"|\"$", ""));
            } else {
                this.attributes.put(split[0].trim(), split[1].replaceAll("^\"|\"$", ""));
            }
            i2++;
        }
        if (this.attributes.containsKey(URI_ATTR)) {
            this.uri = this.attributes.get(URI_ATTR);
        }
    }

    public Map<String, String> getAttributes() {
        return this.attributes;
    }

    public String getRawTag() {
        return this.rawTag;
    }

    public String getTagName() {
        return this.tagName;
    }

    public String getURI() {
        return this.uri;
    }

    public void setAttributes(Map<String, String> map) {
        this.attributes = map;
    }

    public void setTagName(String str) {
        this.tagName = str;
    }

    public void setURI(String str) {
        this.uri = str;
    }

    public UnparsedTag(String str) {
        this.rawTag = str;
        parseTagLine(str);
    }
}

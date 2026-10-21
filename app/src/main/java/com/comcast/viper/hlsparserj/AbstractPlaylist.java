package com.comcast.viper.hlsparserj;

import com.comcast.viper.hlsparserj.tags.Tag;
import com.comcast.viper.hlsparserj.tags.TagFactory;
import com.comcast.viper.hlsparserj.tags.TagNames;
import com.comcast.viper.hlsparserj.tags.UnparsedTag;
import com.comcast.viper.hlsparserj.tags.Version;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public abstract class AbstractPlaylist implements IPlaylist {
    protected List<UnparsedTag> tags;
    protected PlaylistVersion version;
    protected ConcurrentHashMap<String, List<Tag>> parsedTagListCache = new ConcurrentHashMap<>();
    protected ConcurrentHashMap<String, Tag> parsedTagCache = new ConcurrentHashMap<>();

    public AbstractPlaylist(PlaylistVersion playlistVersion, List<UnparsedTag> list) {
        this.version = playlistVersion;
        this.tags = list;
    }

    public Tag getTag(String str) {
        Tag tag = this.parsedTagCache.get(str);
        if (tag == null) {
            for (UnparsedTag unparsedTag : this.tags) {
                if (unparsedTag.getTagName().equals(str)) {
                    tag = TagFactory.createTag(str);
                    tag.setTag(unparsedTag);
                }
            }
            if (tag != null) {
                this.parsedTagCache.put(str, tag);
            }
        }
        return tag;
    }

    public List<? extends Tag> getTagList(String str) {
        List<Tag> list = this.parsedTagListCache.get(str);
        List<Tag> list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            for (UnparsedTag unparsedTag : this.tags) {
                if (unparsedTag.getTagName().equals(str)) {
                    Tag createTag = TagFactory.createTag(str);
                    createTag.setTag(unparsedTag);
                    arrayList.add(createTag);
                }
            }
            this.parsedTagListCache.put(str, arrayList);
            list2 = arrayList;
        }
        return list2;
    }

    @Override // com.comcast.viper.hlsparserj.IPlaylist
    public List<UnparsedTag> getTags() {
        return this.tags;
    }

    @Override // com.comcast.viper.hlsparserj.IPlaylist
    public Version getVersion() {
        return (Version) getTag(TagNames.EXTXVERSION);
    }

    @Override // com.comcast.viper.hlsparserj.IPlaylist
    public abstract boolean isMasterPlaylist();

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (UnparsedTag unparsedTag : this.tags) {
            sb.append(unparsedTag.getRawTag());
            if (unparsedTag.getURI() != null) {
                sb.append(StringUtils.LF);
                sb.append(unparsedTag.getURI());
            }
            sb.append(StringUtils.LF);
        }
        return sb.toString();
    }
}

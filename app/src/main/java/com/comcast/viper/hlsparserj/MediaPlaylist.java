package com.comcast.viper.hlsparserj;

import com.comcast.viper.hlsparserj.tags.Tag;
import com.comcast.viper.hlsparserj.tags.TagFactory;
import com.comcast.viper.hlsparserj.tags.TagNames;
import com.comcast.viper.hlsparserj.tags.UnparsedTag;
import com.comcast.viper.hlsparserj.tags.media.AllowCache;
import com.comcast.viper.hlsparserj.tags.media.ByteRange;
import com.comcast.viper.hlsparserj.tags.media.ExtInf;
import com.comcast.viper.hlsparserj.tags.media.Key;
import com.comcast.viper.hlsparserj.tags.media.MediaSequence;
import com.comcast.viper.hlsparserj.tags.media.PlaylistType;
import com.comcast.viper.hlsparserj.tags.media.Segment;
import com.comcast.viper.hlsparserj.tags.media.TargetDuration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class MediaPlaylist extends AbstractPlaylist {
    public MediaPlaylist(PlaylistVersion playlistVersion, List<UnparsedTag> list) {
        super(playlistVersion, list);
    }

    private List<? extends Tag> getGenericSegments(String str) {
        List<Tag> list = this.parsedTagListCache.get(str);
        List<Tag> list2 = list;
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            boolean z6 = false;
            Key key = null;
            String str2 = null;
            for (UnparsedTag unparsedTag : this.tags) {
                String tagName = unparsedTag.getTagName();
                if (tagName.equals(TagNames.EXTXDISCONTINUITY)) {
                    z6 = true;
                } else if (tagName.equals(TagNames.EXTXPROGRAMDATETIME)) {
                    str2 = unparsedTag.getAttributes().get("NONAME0");
                } else if (tagName.equals(TagNames.EXTXKEY)) {
                    key = new Key();
                    key.setTag(unparsedTag);
                } else if (unparsedTag.getTagName().equals(str)) {
                    Segment segment = (Segment) TagFactory.createTag(str);
                    segment.setTag(unparsedTag);
                    segment.setDiscontinuity(z6);
                    segment.setKey(key);
                    segment.setDateTime(str2);
                    arrayList.add(segment);
                    z6 = false;
                    str2 = null;
                }
            }
            this.parsedTagListCache.put(str, arrayList);
            list2 = arrayList;
        }
        return list2;
    }

    public AllowCache getAllowCache() {
        return (AllowCache) getTag(TagNames.EXTXALLOWCACHE);
    }

    public List<ByteRange> getByteRanges() {
        return getGenericSegments(TagNames.EXTXBYTERANGE);
    }

    public boolean getIFramesOnly() {
        return getTag(TagNames.EXTXIFRAMESONLY) != null;
    }

    public MediaSequence getMediaSequence() {
        return (MediaSequence) getTag(TagNames.EXTXMEDIASEQUENCE);
    }

    public PlaylistType getPlaylistType() {
        return (PlaylistType) getTag(TagNames.EXTXPLAYLISTTYPE);
    }

    public List<ExtInf> getSegments() {
        return getGenericSegments(TagNames.EXTINF);
    }

    public TargetDuration getTargetDuration() {
        return (TargetDuration) getTag(TagNames.EXTXTARGETDURATION);
    }

    @Override // com.comcast.viper.hlsparserj.AbstractPlaylist, com.comcast.viper.hlsparserj.IPlaylist
    public boolean isMasterPlaylist() {
        return false;
    }
}

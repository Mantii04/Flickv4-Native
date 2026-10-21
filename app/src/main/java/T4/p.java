package T4;

import com.comcast.viper.hlsparserj.PlaylistFactory;
import com.comcast.viper.hlsparserj.PlaylistVersion;
import com.comcast.viper.hlsparserj.tags.UnparsedTag;
import flix.com.vision.models.ChannelTv;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class p {
    public static ArrayList<ChannelTv> parseChannels(String str) {
        ArrayList arrayList;
        String str2;
        String uri;
        String str3;
        ArrayList<ChannelTv> arrayList2 = new ArrayList<>();
        try {
            arrayList = (ArrayList) PlaylistFactory.parsePlaylist(PlaylistVersion.TWELVE, str).getTags();
            arrayList2 = parseExtended(arrayList);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (arrayList2.size() > 0) {
            return arrayList2;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            UnparsedTag unparsedTag = (UnparsedTag) it.next();
            ChannelTv channelTv = new ChannelTv();
            String[] split = unparsedTag.getRawTag().split(",");
            try {
                str2 = split[split.length - 1].trim();
            } catch (Exception e7) {
                e = e7;
                str2 = "";
            }
            try {
                String trim = split.length > 1 ? split[split.length - 2].trim() : "";
                if (trim.contains("tvg-logo")) {
                    try {
                        str3 = trim.split("tvg-logo=")[1].split(StringUtils.SPACE)[0].replace("\"", "").trim();
                    } catch (Exception e8) {
                        e8.printStackTrace();
                        str3 = "";
                    }
                    if (str3 != null) {
                        channelTv.logoUrl = str3;
                    } else {
                        channelTv.logoUrl = "";
                    }
                }
                if (trim.contains("group-title=")) {
                    String trim2 = trim.split("group-title=")[1].replace("\"", "").trim();
                    if (trim2 != null) {
                        channelTv.group_name = trim2;
                    }
                } else {
                    channelTv.group_name = "UNGROUPED";
                }
            } catch (Exception e9) {
                e = e9;
                e.printStackTrace();
                if (!str2.toLowerCase().contains("label")) {
                    channelTv.label = str2.toUpperCase();
                    uri = unparsedTag.getURI();
                    channelTv.url = uri;
                    if (uri != null) {
                    }
                    arrayList2.add(channelTv);
                }
            }
            if (!str2.toLowerCase().contains("label") && !str2.toLowerCase().contains("[off]")) {
                channelTv.label = str2.toUpperCase();
                uri = unparsedTag.getURI();
                channelTv.url = uri;
                if (uri != null || !uri.contains("autoiptv.")) {
                    arrayList2.add(channelTv);
                }
            }
        }
        return arrayList2;
    }

    public static ArrayList<ChannelTv> parseExtended(ArrayList<UnparsedTag> arrayList) {
        ArrayList<ChannelTv> arrayList2 = new ArrayList<>();
        Iterator<UnparsedTag> it = arrayList.iterator();
        while (it.hasNext()) {
            UnparsedTag next = it.next();
            ChannelTv channelTv = new ChannelTv();
            String uri = next.getURI();
            if (uri != null && uri.length() > 0) {
                channelTv.url = uri;
                String str = null;
                String str2 = "";
                String str3 = null;
                for (String str4 : next.getRawTag().split("\" ")) {
                    String[] split = str4.split("=\"");
                    if (split.length > 1) {
                        String str5 = split[0];
                        String str6 = split[1];
                        if (str6.contains("\"")) {
                            str6 = str6.split("\"")[0];
                        }
                        if (str5.toLowerCase().contains("tvg-name")) {
                            str = str6;
                        }
                        if (str5.toLowerCase().contains("tvg-logo")) {
                            str2 = str6;
                        }
                        if (str5.toLowerCase().contains("group-title")) {
                            str3 = str6;
                        }
                        if (str3 == null || str3.isEmpty()) {
                            str3 = "UNGROUPED";
                        }
                    }
                }
                if (str != null) {
                    channelTv.label = str;
                    channelTv.group_name = str3.toUpperCase();
                    channelTv.url = uri;
                    channelTv.logoUrl = str2;
                    arrayList2.add(channelTv);
                }
            }
        }
        return arrayList2;
    }
}

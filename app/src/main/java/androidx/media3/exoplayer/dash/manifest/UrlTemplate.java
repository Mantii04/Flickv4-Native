package androidx.media3.exoplayer.dash.manifest;

import androidx.media3.common.util.UnstableApi;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@UnstableApi
/* loaded from: classes.dex */
public final class UrlTemplate {
    private static final String BANDWIDTH = "Bandwidth";
    private static final int BANDWIDTH_ID = 3;
    private static final String DEFAULT_FORMAT_TAG = "%01d";
    private static final String ESCAPED_DOLLAR = "$$";
    private static final String NUMBER = "Number";
    private static final int NUMBER_ID = 2;
    private static final String REPRESENTATION = "RepresentationID";
    private static final int REPRESENTATION_ID = 1;
    private static final String TIME = "Time";
    private static final int TIME_ID = 4;
    private final List<String> identifierFormatTags;
    private final List<Integer> identifiers;
    private final List<String> urlPieces;

    private UrlTemplate(List<String> list, List<Integer> list2, List<String> list3) {
        this.urlPieces = list;
        this.identifiers = list2;
        this.identifierFormatTags = list3;
    }

    public static UrlTemplate compile(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        parseTemplate(str, arrayList, arrayList2, arrayList3);
        return new UrlTemplate(arrayList, arrayList2, arrayList3);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void parseTemplate(String str, List<String> list, List<Integer> list2, List<String> list3) {
        String str2;
        boolean z6;
        list.add("");
        int i2 = 0;
        while (i2 < str.length()) {
            int indexOf = str.indexOf("$", i2);
            if (indexOf == -1) {
                list.set(list2.size(), list.get(list2.size()) + str.substring(i2));
                i2 = str.length();
            } else if (indexOf != i2) {
                list.set(list2.size(), list.get(list2.size()) + str.substring(i2, indexOf));
                i2 = indexOf;
            } else if (str.startsWith(ESCAPED_DOLLAR, i2)) {
                list.set(list2.size(), list.get(list2.size()) + "$");
                i2 += 2;
            } else {
                list3.add("");
                int i7 = i2 + 1;
                int indexOf2 = str.indexOf("$", i7);
                String substring = str.substring(i7, indexOf2);
                if (substring.equals(REPRESENTATION)) {
                    list2.add(1);
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    if (indexOf3 != -1) {
                        str2 = substring.substring(indexOf3);
                        if (!str2.endsWith("d") && !str2.endsWith("x") && !str2.endsWith("X")) {
                            str2 = str2.concat("d");
                        }
                        substring = substring.substring(0, indexOf3);
                    } else {
                        str2 = DEFAULT_FORMAT_TAG;
                    }
                    substring.getClass();
                    switch (substring.hashCode()) {
                        case -1950496919:
                            if (substring.equals(NUMBER)) {
                                z6 = false;
                                break;
                            }
                            z6 = -1;
                            break;
                        case 2606829:
                            if (substring.equals(TIME)) {
                                z6 = true;
                                break;
                            }
                            z6 = -1;
                            break;
                        case 38199441:
                            if (substring.equals(BANDWIDTH)) {
                                z6 = 2;
                                break;
                            }
                            z6 = -1;
                            break;
                        default:
                            z6 = -1;
                            break;
                    }
                    switch (z6) {
                        case false:
                            list2.add(2);
                            break;
                        case true:
                            list2.add(4);
                            break;
                        case true:
                            list2.add(3);
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: ".concat(str));
                    }
                    list3.set(list2.size() - 1, str2);
                }
                list.add("");
                i2 = indexOf2 + 1;
            }
        }
    }

    public String buildUri(String str, long j7, int i2, long j8) {
        StringBuilder sb = new StringBuilder();
        for (int i7 = 0; i7 < this.identifiers.size(); i7++) {
            sb.append(this.urlPieces.get(i7));
            if (this.identifiers.get(i7).intValue() == 1) {
                sb.append(str);
            } else if (this.identifiers.get(i7).intValue() == 2) {
                sb.append(String.format(Locale.US, this.identifierFormatTags.get(i7), Long.valueOf(j7)));
            } else if (this.identifiers.get(i7).intValue() == 3) {
                sb.append(String.format(Locale.US, this.identifierFormatTags.get(i7), Integer.valueOf(i2)));
            } else if (this.identifiers.get(i7).intValue() == 4) {
                sb.append(String.format(Locale.US, this.identifierFormatTags.get(i7), Long.valueOf(j8)));
            }
        }
        sb.append(this.urlPieces.get(this.identifiers.size()));
        return sb.toString();
    }
}

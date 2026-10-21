package J0;

import P3.v;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class p extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1475b;

    /* renamed from: c, reason: collision with root package name */
    public final ImmutableList f1476c;

    /* JADX WARN: Multi-variable type inference failed */
    public p(String str, String str2, List<String> list) {
        super(str);
        v.checkArgument(!list.isEmpty());
        this.f1475b = str2;
        ImmutableList copyOf = ImmutableList.copyOf((Collection) list);
        this.f1476c = copyOf;
    }

    public static ArrayList a(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && p.class == obj.getClass()) {
            p pVar = (p) obj;
            if (Objects.equals(this.f1463a, pVar.f1463a) && Objects.equals(this.f1475b, pVar.f1475b) && this.f1476c.equals(pVar.f1476c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int b7 = A.i.b(527, 31, this.f1463a);
        String str = this.f1475b;
        return this.f1476c.hashCode() + ((b7 + (str != null ? str.hashCode() : 0)) * 31);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // J0.k, androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.f1463a;
        str.getClass();
        ImmutableList immutableList = this.f1476c;
        char c7 = 65535;
        switch (str.hashCode()) {
            case 82815:
                if (str.equals("TAL")) {
                    c7 = 0;
                    break;
                }
                break;
            case 82878:
                if (str.equals("TCM")) {
                    c7 = 1;
                    break;
                }
                break;
            case 82897:
                if (str.equals("TDA")) {
                    c7 = 2;
                    break;
                }
                break;
            case 83253:
                if (str.equals("TP1")) {
                    c7 = 3;
                    break;
                }
                break;
            case 83254:
                if (str.equals("TP2")) {
                    c7 = 4;
                    break;
                }
                break;
            case 83255:
                if (str.equals("TP3")) {
                    c7 = 5;
                    break;
                }
                break;
            case 83341:
                if (str.equals("TRK")) {
                    c7 = 6;
                    break;
                }
                break;
            case 83378:
                if (str.equals("TT2")) {
                    c7 = 7;
                    break;
                }
                break;
            case 83536:
                if (str.equals("TXT")) {
                    c7 = '\b';
                    break;
                }
                break;
            case 83552:
                if (str.equals("TYE")) {
                    c7 = '\t';
                    break;
                }
                break;
            case 2567331:
                if (str.equals("TALB")) {
                    c7 = '\n';
                    break;
                }
                break;
            case 2569357:
                if (str.equals("TCOM")) {
                    c7 = 11;
                    break;
                }
                break;
            case 2569358:
                if (str.equals("TCON")) {
                    c7 = '\f';
                    break;
                }
                break;
            case 2569891:
                if (str.equals("TDAT")) {
                    c7 = '\r';
                    break;
                }
                break;
            case 2570401:
                if (str.equals("TDRC")) {
                    c7 = 14;
                    break;
                }
                break;
            case 2570410:
                if (str.equals("TDRL")) {
                    c7 = 15;
                    break;
                }
                break;
            case 2571565:
                if (str.equals("TEXT")) {
                    c7 = 16;
                    break;
                }
                break;
            case 2575251:
                if (str.equals("TIT2")) {
                    c7 = 17;
                    break;
                }
                break;
            case 2581512:
                if (str.equals("TPE1")) {
                    c7 = 18;
                    break;
                }
                break;
            case 2581513:
                if (str.equals("TPE2")) {
                    c7 = 19;
                    break;
                }
                break;
            case 2581514:
                if (str.equals("TPE3")) {
                    c7 = 20;
                    break;
                }
                break;
            case 2583398:
                if (str.equals("TRCK")) {
                    c7 = 21;
                    break;
                }
                break;
            case 2590194:
                if (str.equals("TYER")) {
                    c7 = 22;
                    break;
                }
                break;
        }
        try {
            switch (c7) {
                case 0:
                case '\n':
                    builder.setAlbumTitle((CharSequence) immutableList.get(0));
                    break;
                case 1:
                case 11:
                    builder.setComposer((CharSequence) immutableList.get(0));
                    break;
                case 2:
                case '\r':
                    String str2 = (String) immutableList.get(0);
                    builder.setRecordingMonth(Integer.valueOf(Integer.parseInt(str2.substring(2, 4)))).setRecordingDay(Integer.valueOf(Integer.parseInt(str2.substring(0, 2))));
                    break;
                case 3:
                case 18:
                    builder.setArtist((CharSequence) immutableList.get(0));
                    break;
                case 4:
                case 19:
                    builder.setAlbumArtist((CharSequence) immutableList.get(0));
                    break;
                case 5:
                case 20:
                    builder.setConductor((CharSequence) immutableList.get(0));
                    break;
                case 6:
                case 21:
                    String[] split = Util.split((String) immutableList.get(0), RemoteSettings.FORWARD_SLASH_STRING);
                    builder.setTrackNumber(Integer.valueOf(Integer.parseInt(split[0]))).setTotalTrackCount(split.length > 1 ? Integer.valueOf(Integer.parseInt(split[1])) : null);
                    break;
                case 7:
                case 17:
                    builder.setTitle((CharSequence) immutableList.get(0));
                    break;
                case '\b':
                case 16:
                    builder.setWriter((CharSequence) immutableList.get(0));
                    break;
                case '\t':
                case 22:
                    builder.setRecordingYear(Integer.valueOf(Integer.parseInt((String) immutableList.get(0))));
                    break;
                case '\f':
                    Integer tryParse = com.google.common.primitives.a.tryParse((String) immutableList.get(0));
                    if (tryParse != null) {
                        String resolveV1Genre = l.resolveV1Genre(tryParse.intValue());
                        if (resolveV1Genre != null) {
                            builder.setGenre(resolveV1Genre);
                            break;
                        }
                    } else {
                        builder.setGenre((CharSequence) immutableList.get(0));
                        break;
                    }
                    break;
                case 14:
                    ArrayList a7 = a((String) immutableList.get(0));
                    int size = a7.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                builder.setRecordingDay((Integer) a7.get(2));
                            }
                        }
                        builder.setRecordingMonth((Integer) a7.get(1));
                    }
                    builder.setRecordingYear((Integer) a7.get(0));
                    break;
                case 15:
                    ArrayList a8 = a((String) immutableList.get(0));
                    int size2 = a8.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                builder.setReleaseDay((Integer) a8.get(2));
                            }
                        }
                        builder.setReleaseMonth((Integer) a8.get(1));
                    }
                    builder.setReleaseYear((Integer) a8.get(0));
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": description=" + this.f1475b + ": values=" + this.f1476c;
    }
}

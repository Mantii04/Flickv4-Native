package y4;

import android.view.ContextThemeWrapper;
import android.widget.Toast;
import androidx.media3.datasource.DataSchemeDataSource;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.R;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.UserTorrentsActivity;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.torrent.UserTorrent;
import flix.com.vision.processors.english.BaseProcessor$TorrentServiceType;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final /* synthetic */ class u1 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21293b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UserTorrentsActivity f21294e;

    public /* synthetic */ u1(UserTorrentsActivity userTorrentsActivity, int i2) {
        this.f21293b = i2;
        this.f21294e = userTorrentsActivity;
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2;
        String str = "";
        UserTorrentsActivity userTorrentsActivity = this.f21294e;
        switch (this.f21293b) {
            case 0:
                int i7 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                break;
            case 1:
                int i8 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                JsonObject asJsonObject = ((JsonElement) obj).getAsJsonObject();
                if (asJsonObject.has(FirebaseAnalytics.Param.SUCCESS) && asJsonObject.get(FirebaseAnalytics.Param.SUCCESS).getAsBoolean()) {
                    JsonArray asJsonArray = asJsonObject.getAsJsonArray(DataSchemeDataSource.SCHEME_DATA);
                    int i9 = 0;
                    while (true) {
                        int size = asJsonArray.size();
                        ArrayList arrayList = userTorrentsActivity.f15280b;
                        if (i9 < size) {
                            JsonObject asJsonObject2 = asJsonArray.get(i9).getAsJsonObject();
                            UserTorrent userTorrent = new UserTorrent();
                            userTorrent.file_id = asJsonObject2.has("id") ? asJsonObject2.get("id").getAsString() : "";
                            userTorrent.filename = asJsonObject2.has("name") ? asJsonObject2.get("name").getAsString() : "Unknown";
                            userTorrent.status = asJsonObject2.has("download_state") ? asJsonObject2.get("download_state").getAsString() : "";
                            long asLong = asJsonObject2.has("size") ? asJsonObject2.get("size").getAsLong() : 0L;
                            userTorrent.filesize = asLong;
                            if (asLong > 0) {
                                userTorrent.file_size_label = T4.m.readableFileSize(asLong);
                            }
                            userTorrent.source_type = BaseProcessor$TorrentServiceType.f16069j;
                            userTorrent.streamable = false;
                            arrayList.add(userTorrent);
                            i9++;
                        } else if (arrayList.size() > 0) {
                            userTorrentsActivity.f15288r.notifyDataSetChanged();
                            break;
                        }
                    }
                }
                break;
            case 2:
                int i10 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                ((Throwable) obj).printStackTrace();
                break;
            case 3:
                JsonElement jsonElement = (JsonElement) obj;
                int i11 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                if (jsonElement.isJsonArray()) {
                    JsonArray asJsonArray2 = jsonElement.getAsJsonArray();
                    int i12 = 0;
                    while (true) {
                        int size2 = asJsonArray2.size();
                        ArrayList arrayList2 = userTorrentsActivity.f15280b;
                        if (i12 < size2) {
                            JsonObject asJsonObject3 = asJsonArray2.get(i12).getAsJsonObject();
                            UserTorrent userTorrent2 = new UserTorrent();
                            userTorrent2.file_id = asJsonObject3.has("requestId") ? asJsonObject3.get("requestId").getAsString() : "";
                            userTorrent2.filename = asJsonObject3.has("fileName") ? asJsonObject3.get("fileName").getAsString() : "Unknown";
                            userTorrent2.status = asJsonObject3.has("status") ? asJsonObject3.get("status").getAsString() : "";
                            long asLong2 = asJsonObject3.has("fileSize") ? asJsonObject3.get("fileSize").getAsLong() : 0L;
                            userTorrent2.filesize = asLong2;
                            if (asLong2 > 0) {
                                userTorrent2.file_size_label = T4.m.readableFileSize(asLong2);
                            }
                            userTorrent2.source_type = BaseProcessor$TorrentServiceType.f16070m;
                            userTorrent2.streamable = false;
                            arrayList2.add(userTorrent2);
                            i12++;
                        } else if (arrayList2.size() > 0) {
                            userTorrentsActivity.f15288r.notifyDataSetChanged();
                            break;
                        }
                    }
                }
                break;
            case 4:
                int i13 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                ((Throwable) obj).printStackTrace();
                break;
            case 5:
                int i14 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.getClass();
                JsonObject asJsonObject4 = ((JsonElement) obj).getAsJsonObject();
                String asString = asJsonObject4.get("status").getAsString();
                if (asString != null && asString.equals(FirebaseAnalytics.Param.SUCCESS)) {
                    JsonArray asJsonArray3 = asJsonObject4.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject().get("magnets").getAsJsonObject().get("links").getAsJsonArray();
                    for (int i15 = 0; i15 < asJsonArray3.size(); i15++) {
                        JsonObject asJsonObject5 = asJsonArray3.get(i15).getAsJsonObject();
                        if (asJsonObject5.get("size").getAsLong() > 1705604) {
                            userTorrentsActivity.unlockLinkAllRebrid(asJsonObject5.get("link").getAsString());
                        }
                    }
                    if (userTorrentsActivity.f15294x.size() == 0) {
                        userTorrentsActivity.h();
                        Toast.makeText(userTorrentsActivity, "Not available to stream", 0).show();
                        break;
                    }
                }
                break;
            case 6:
                JsonElement jsonElement2 = (JsonElement) obj;
                int i16 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                JsonArray asJsonArray4 = (jsonElement2.isJsonObject() && jsonElement2.getAsJsonObject().has("files")) ? jsonElement2.getAsJsonObject().getAsJsonArray("files") : jsonElement2.isJsonArray() ? jsonElement2.getAsJsonArray() : null;
                if (asJsonArray4 != null && asJsonArray4.size() > 0) {
                    int i17 = 0;
                    while (true) {
                        int size3 = asJsonArray4.size();
                        ArrayList arrayList3 = userTorrentsActivity.f15294x;
                        if (i17 < size3) {
                            JsonObject asJsonObject6 = asJsonArray4.get(i17).getAsJsonObject();
                            String asString2 = asJsonObject6.has("name") ? asJsonObject6.get("name").getAsString() : A.i.f(i17, "File ");
                            String asString3 = asJsonObject6.has("url") ? asJsonObject6.get("url").getAsString() : "";
                            if (asString2.toLowerCase().endsWith(".mp4") || asString2.toLowerCase().endsWith(".mkv") || asString2.toLowerCase().endsWith(".avi")) {
                                long asLong3 = asJsonObject6.has("size") ? asJsonObject6.get("size").getAsLong() : 0L;
                                VideoSource videoSource = new VideoSource();
                                i2 = 1;
                                videoSource.streamable = true;
                                StringBuilder s6 = A.i.s(asString2, " [");
                                s6.append(T4.m.readableFileSize(asLong3));
                                s6.append("]");
                                videoSource.label = s6.toString();
                                videoSource.streamUrl = asString3;
                                videoSource.originalFileName = asString2;
                                videoSource.isOffCloud = true;
                                arrayList3.add(videoSource);
                            } else {
                                i2 = 1;
                            }
                            i17 += i2;
                        } else if (arrayList3.size() <= 0) {
                            Toast.makeText(userTorrentsActivity, "No playable video files found.", 0).show();
                            break;
                        } else {
                            try {
                                ArrayList arrayList4 = new ArrayList();
                                Iterator it = arrayList3.iterator();
                                while (it.hasNext()) {
                                    arrayList4.add(((VideoSource) it.next()).label);
                                }
                                CharSequence[] charSequenceArr = (CharSequence[]) arrayList4.toArray(new CharSequence[0]);
                                e.r rVar = new e.r(new ContextThemeWrapper(userTorrentsActivity, R.style.AlertDialogNoHeader));
                                rVar.setSingleChoiceItems(charSequenceArr, -1, new w1(userTorrentsActivity, arrayList3, 2));
                                rVar.setCancelable(true);
                                rVar.show();
                                break;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                                return;
                            }
                        }
                    }
                }
                break;
            case 7:
                int i18 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                Toast.makeText(userTorrentsActivity, "Failed to explore Offcloud files.", 0).show();
                break;
            case 8:
                int i19 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.getClass();
                JsonObject asJsonObject7 = ((JsonElement) obj).getAsJsonObject();
                String asString4 = asJsonObject7.get("status").getAsString();
                if (asString4 != null && asString4.equals(FirebaseAnalytics.Param.SUCCESS)) {
                    JsonObject asJsonObject8 = asJsonObject7.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject();
                    String asString5 = asJsonObject8.get("link").getAsString();
                    long asLong4 = asJsonObject8.get("filesize").getAsLong();
                    if (asLong4 >= 100000000) {
                        if (asLong4 != 0 && asLong4 != -1) {
                            str = T4.m.readableFileSize(asLong4);
                        }
                        VideoSource videoSource2 = new VideoSource();
                        videoSource2.streamable = true;
                        videoSource2.label = A.i.l("[ALLDEBRID] [FAST] [", str, "]");
                        videoSource2.streamUrl = asString5;
                        videoSource2.isAllDebrid = true;
                        LinksActivity.setRDQtyLabel(videoSource2);
                        if (videoSource2.quality == 0) {
                            videoSource2.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                        }
                        userTorrentsActivity.f15294x.add(videoSource2);
                        break;
                    }
                }
                break;
            case 9:
                int i20 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                VideoSource parseRDVideo = JsonUtils.parseRDVideo((JsonElement) obj);
                if (parseRDVideo != null) {
                    LinksActivity.setRDQtyLabel(parseRDVideo);
                }
                ArrayList arrayList5 = userTorrentsActivity.f15294x;
                arrayList5.add(parseRDVideo);
                userTorrentsActivity.e(arrayList5);
                break;
            case 10:
                int i21 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                Toast.makeText(userTorrentsActivity, "Failed to connect to Torbox API.", 0).show();
                break;
            case 11:
                int i22 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                JsonArray asJsonArray5 = ((JsonElement) obj).getAsJsonArray();
                int i23 = 0;
                while (true) {
                    int size4 = asJsonArray5.size();
                    ArrayList arrayList6 = userTorrentsActivity.f15280b;
                    if (i23 < size4) {
                        JsonObject asJsonObject9 = asJsonArray5.get(i23).getAsJsonObject();
                        UserTorrent userTorrent3 = new UserTorrent();
                        userTorrent3.filesize = asJsonObject9.get("bytes").getAsLong();
                        userTorrent3.host = asJsonObject9.get("host").getAsString();
                        userTorrent3.file_id = asJsonObject9.get("id").getAsString();
                        long j7 = userTorrent3.filesize;
                        if (j7 > 1000000) {
                            userTorrent3.file_size_label = T4.m.readableFileSize(j7);
                        }
                        userTorrent3.status = asJsonObject9.get("status").getAsString();
                        userTorrent3.filename = asJsonObject9.get("filename").getAsString();
                        userTorrent3.source_type = BaseProcessor$TorrentServiceType.f16066b;
                        String str2 = userTorrent3.status;
                        if (str2 != null && !str2.equals("error")) {
                            JsonArray asJsonArray6 = asJsonObject9.get("links").getAsJsonArray();
                            if (asJsonArray6.size() > 0) {
                                for (int i24 = 0; i24 < asJsonArray6.size(); i24++) {
                                    userTorrent3.src.add(asJsonArray6.get(i24).getAsString());
                                }
                            }
                        }
                        arrayList6.add(userTorrent3);
                        i23++;
                    } else if (arrayList6.size() > 0) {
                        userTorrentsActivity.f15288r.notifyDataSetChanged();
                        break;
                    }
                }
                break;
            case 12:
                int i25 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                break;
            case 13:
                int i26 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                JsonObject asJsonObject10 = ((JsonElement) obj).getAsJsonObject();
                if (!asJsonObject10.get("status").getAsString().equals(FirebaseAnalytics.Param.SUCCESS)) {
                    Toast.makeText(userTorrentsActivity, "Error getting torrent links from Premiumize Server", 0).show();
                    break;
                } else {
                    JsonArray asJsonArray7 = asJsonObject10.get("transfers").getAsJsonArray();
                    int i27 = 0;
                    while (true) {
                        int size5 = asJsonArray7.size();
                        ArrayList arrayList7 = userTorrentsActivity.f15280b;
                        if (i27 < size5) {
                            JsonObject asJsonObject11 = asJsonArray7.get(i27).getAsJsonObject();
                            UserTorrent userTorrent4 = new UserTorrent();
                            userTorrent4.status = asJsonObject11.get("status").getAsString();
                            userTorrent4.file_id = asJsonObject11.get("id").getAsString();
                            userTorrent4.source_type = BaseProcessor$TorrentServiceType.f16067e;
                            userTorrent4.src.add(asJsonObject11.get("src").getAsString());
                            userTorrent4.filename = asJsonObject11.get("name").getAsString();
                            userTorrent4.is_premiumize = true;
                            arrayList7.add(userTorrent4);
                            i27++;
                        } else if (arrayList7.size() > 0) {
                            userTorrentsActivity.f15288r.notifyDataSetChanged();
                            break;
                        }
                    }
                }
                break;
            case 14:
                int i28 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                break;
            default:
                int i29 = UserTorrentsActivity.f15279y;
                userTorrentsActivity.h();
                JsonObject asJsonObject12 = ((JsonElement) obj).getAsJsonObject();
                String asString6 = asJsonObject12.get("status").getAsString();
                if (asString6 != null && asString6.equals(FirebaseAnalytics.Param.SUCCESS)) {
                    JsonArray asJsonArray8 = asJsonObject12.get(DataSchemeDataSource.SCHEME_DATA).getAsJsonObject().get("magnets").getAsJsonArray();
                    int i30 = 0;
                    while (true) {
                        int size6 = asJsonArray8.size();
                        ArrayList arrayList8 = userTorrentsActivity.f15280b;
                        if (i30 < size6) {
                            JsonObject asJsonObject13 = asJsonArray8.get(i30).getAsJsonObject();
                            long asLong5 = asJsonObject13.get("id").getAsLong();
                            String readableFileSize = T4.m.readableFileSize(asJsonObject13.get("size").getAsLong());
                            String asString7 = asJsonObject13.get("filename").getAsString();
                            String asString8 = asJsonObject13.get("status").getAsString();
                            UserTorrent userTorrent5 = new UserTorrent();
                            userTorrent5.status = asString8;
                            userTorrent5.file_size_label = readableFileSize;
                            userTorrent5.file_id = asLong5 + "";
                            userTorrent5.source_type = BaseProcessor$TorrentServiceType.f16068f;
                            userTorrent5.filename = asString7;
                            userTorrent5.is_all_debrid = true;
                            arrayList8.add(userTorrent5);
                            i30++;
                        } else if (arrayList8.size() > 0) {
                            userTorrentsActivity.f15288r.notifyDataSetChanged();
                            break;
                        }
                    }
                }
                break;
        }
    }
}

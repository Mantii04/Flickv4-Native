.class public final synthetic LJ0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ0/h;
.implements LK3/E;
.implements LX2/c;
.implements LP2/g;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/android/volley/Response$ErrorListener;
.implements La3/p;
.implements Landroidx/media3/common/DebugViewProvider;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/audio/DefaultGainProvider$FadeProvider;
.implements Landroidx/media3/datasource/cache/CacheKeyFactory;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LJ0/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Lcom/android/volley/VolleyError;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/text/Editable;)I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/material/textfield/TextInputLayout;->L0:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, LJ0/g;->b:I

    .line 2
    .line 3
    check-cast p1, Landroid/database/Cursor;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, LS2/E;->builder()LS2/D;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, LS2/D;->setBackendName(Ljava/lang/String;)LS2/D;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ld3/a;->valueOf(I)Lcom/google/android/datatransport/Priority;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, LS2/D;->setPriority(Lcom/google/android/datatransport/Priority;)LS2/D;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v3, 0x0

    .line 55
    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    :goto_1
    invoke-virtual {v1, v2}, LS2/D;->setExtras([B)LS2/D;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, LS2/D;->build()LS2/E;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-object v0

    .line 72
    :pswitch_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-lez p1, :cond_2

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    const/4 p1, 0x0

    .line 81
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/datasource/cache/a;->a(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IIIII)Z
    .locals 3

    .line 1
    iget v0, p0, LJ0/g;->b:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p2, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p3, v0, :cond_0

    if-ne p4, v2, :cond_0

    if-eq p5, v2, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDebugPreviewSurfaceView(II)Landroid/view/SurfaceView;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroidx/media3/common/b;->a(II)Landroid/view/SurfaceView;

    move-result-object p1

    return-object p1
.end method

.method public getGainFactorAt(JJ)F
    .locals 1

    .line 1
    iget v0, p0, LJ0/g;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, p2, p3, p4}, Landroidx/media3/common/audio/DefaultGainProvider;->a(JJ)F

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/common/audio/DefaultGainProvider;->b(JJ)F

    move-result p1

    return p1

    :pswitch_1
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/common/audio/DefaultGainProvider;->c(JJ)F

    move-result p1

    return p1

    :pswitch_2
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/common/audio/DefaultGainProvider;->d(JJ)F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LJ0/g;->b:I

    sparse-switch v0, :sswitch_data_0

    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;->onFormatSupportChanged()V

    return-void

    :sswitch_0
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;->onOffloadPresentationEnded()V

    return-void

    :sswitch_1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;->onOffloadDataRequest()V

    return-void

    :sswitch_2
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;->onReleased()V

    return-void

    :sswitch_3
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    invoke-interface {p1}, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;->onUnderrun()V

    return-void

    :sswitch_4
    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-interface {p1}, Landroidx/media3/common/Player$Listener;->onRenderedFirstFrame()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1a -> :sswitch_2
        0x1b -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    iget v0, p0, LJ0/g;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    const-class p1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, ""

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    const-class p1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, ""

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_2
    const-class p1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, ""

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    const-class p1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, ""

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_4
    const-class p1, Lflix/com/vision/activities/MovieDetailActivity;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v0, ""

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    .line 77
    .line 78
    :pswitch_7
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    :try_start_0
    const-string v0, "images"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "base_url"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sput-object p1, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {}, Lflix/com/vision/App;->getInstance()Lflix/com/vision/App;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lflix/com/vision/App;->s:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "tmdb_base_url"

    .line 28
    .line 29
    sget-object v1, Lflix/com/vision/App;->D:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onSchedule(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method

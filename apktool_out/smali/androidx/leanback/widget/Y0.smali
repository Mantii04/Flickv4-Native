.class public final Landroidx/leanback/widget/Y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field public final synthetic a:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/leanback/widget/Y0;->a:Landroidx/leanback/widget/SearchBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 1
    const-string v0, "SearchBar"

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 7
    .line 8
    const-string p1, "recognizer other error"

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 15
    .line 16
    const-string p1, "recognizer insufficient permissions"

    .line 17
    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_1
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 23
    .line 24
    const-string p1, "recognizer busy"

    .line 25
    .line 26
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 31
    .line 32
    const-string p1, "recognizer no match"

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 39
    .line 40
    const-string p1, "recognizer speech timeout"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_4
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 47
    .line 48
    const-string p1, "recognizer client error"

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :pswitch_5
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 55
    .line 56
    const-string p1, "recognizer server error"

    .line 57
    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_6
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 63
    .line 64
    const-string p1, "recognizer audio error"

    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_7
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 71
    .line 72
    const-string p1, "recognizer network error"

    .line 73
    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_8
    sget p1, Landroidx/leanback/widget/SearchBar;->G:I

    .line 79
    .line 80
    const-string p1, "recognizer network timeout"

    .line 81
    .line 82
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/Y0;->a:Landroidx/leanback/widget/SearchBar;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 88
    .line 89
    .line 90
    sget v0, Landroidx/leanback/R$raw;->lb_voice_failure:I

    .line 91
    .line 92
    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->q:Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v2, Landroidx/leanback/widget/O0;

    .line 95
    .line 96
    invoke-direct {v2, p1, v0}, Landroidx/leanback/widget/O0;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "results_recognition"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-le v1, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-object v1, p0, Landroidx/leanback/widget/Y0;->a:Landroidx/leanback/widget/SearchBar;

    .line 39
    .line 40
    iget-object v1, v1, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    .line 41
    .line 42
    invoke-virtual {v1, v0, p1}, Landroidx/leanback/widget/SearchEditText;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/Y0;->a:Landroidx/leanback/widget/SearchBar;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->e:Landroidx/leanback/widget/SpeechOrbView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/leanback/widget/SpeechOrbView;->showListening()V

    .line 6
    .line 7
    .line 8
    sget v0, Landroidx/leanback/R$raw;->lb_voice_open:I

    .line 9
    .line 10
    iget-object v1, p1, Landroidx/leanback/widget/SearchBar;->q:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v2, Landroidx/leanback/widget/O0;

    .line 13
    .line 14
    invoke-direct {v2, p1, v0}, Landroidx/leanback/widget/O0;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "results_recognition"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/Y0;->a:Landroidx/leanback/widget/SearchBar;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, v0, Landroidx/leanback/widget/SearchBar;->j:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->b:Landroidx/leanback/widget/SearchEditText;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Landroidx/leanback/widget/SearchBar;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 31
    .line 32
    .line 33
    sget p1, Landroidx/leanback/R$raw;->lb_voice_success:I

    .line 34
    .line 35
    iget-object v1, v0, Landroidx/leanback/widget/SearchBar;->q:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v2, Landroidx/leanback/widget/O0;

    .line 38
    .line 39
    invoke-direct {v2, v0, p1}, Landroidx/leanback/widget/O0;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 9
    .line 10
    mul-float/2addr p1, v0

    .line 11
    float-to-int p1, p1

    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/Y0;->a:Landroidx/leanback/widget/SearchBar;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/leanback/widget/SearchBar;->e:Landroidx/leanback/widget/SpeechOrbView;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setSoundLevel(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

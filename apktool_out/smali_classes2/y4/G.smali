.class public final synthetic Ly4/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/DramaSearchResultActivity;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/DramaSearchResultActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/G;->b:I

    iput-object p1, p0, Ly4/G;->e:Lflix/com/vision/activities/DramaSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    iget-object v0, p0, Ly4/G;->e:Lflix/com/vision/activities/DramaSearchResultActivity;

    .line 4
    .line 5
    iget v1, p0, Ly4/G;->b:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, v0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Lflix/com/vision/activities/DramaSearchResultActivity;->e()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object p1, v0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Lflix/com/vision/activities/DramaSearchResultActivity;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, v0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Lflix/com/vision/activities/DramaSearchResultActivity;->e()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    sget p1, Lflix/com/vision/activities/DramaSearchResultActivity;->z:I

    .line 38
    .line 39
    const-string p1, " "

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lflix/com/vision/activities/DramaSearchResultActivity;->onLetterClicked(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_2
    iget-object v1, v0, Lflix/com/vision/activities/DramaSearchResultActivity;->x:Ljava/lang/String;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    const/4 v3, 0x3

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ge v4, v3, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v3, v0, Lflix/com/vision/activities/DramaSearchResultActivity;->r:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    const-string v3, "\'"

    .line 70
    .line 71
    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v1, Ly4/I;

    .line 76
    .line 77
    invoke-direct {v1, v0, v2, p1}, Ly4/I;-><init>(Lflix/com/vision/activities/DramaSearchResultActivity;ZLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    new-array v0, v2, [Ljava/lang/Void;

    .line 83
    .line 84
    invoke-virtual {v1, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-ge p1, v3, :cond_3

    .line 95
    .line 96
    const-string p1, "enter at least 3 characters"

    .line 97
    .line 98
    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 103
    .line 104
    .line 105
    :cond_3
    :goto_2
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

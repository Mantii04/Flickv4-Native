.class public final synthetic Ly4/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SearchActivityTV;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SearchActivityTV;I)V
    .locals 0

    .line 1
    iput p2, p0, Ly4/I0;->b:I

    iput-object p1, p0, Ly4/I0;->e:Lflix/com/vision/activities/SearchActivityTV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ly4/I0;->e:Lflix/com/vision/activities/SearchActivityTV;

    .line 2
    .line 3
    iget v0, p0, Ly4/I0;->b:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, "android.speech.extra.PROMPT"

    .line 21
    .line 22
    const-string v2, "Say a Movie Title or Actor name"

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 28
    .line 29
    const-string v2, "free_form"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x4ba

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "Voice Search is not supported on this device"

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v0, p1, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    const-string v0, ""

    .line 65
    .line 66
    iput-object v0, p1, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p1}, Lflix/com/vision/activities/SearchActivityTV;->f()V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    :pswitch_1
    iget-object v0, p1, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Lflix/com/vision/activities/SearchActivityTV;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p1, Lflix/com/vision/activities/SearchActivityTV;->p:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p1}, Lflix/com/vision/activities/SearchActivityTV;->f()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :pswitch_2
    sget v0, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 85
    .line 86
    const-string v0, " "

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lflix/com/vision/activities/SearchActivityTV;->onLetterClicked(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_3
    sget v0, Lflix/com/vision/activities/SearchActivityTV;->I:I

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    new-instance v0, Landroid/content/Intent;

    .line 98
    .line 99
    const-string v1, "package:flix.com.vision"

    .line 100
    .line 101
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 106
    .line 107
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .line 109
    .line 110
    const/16 v1, 0x7d0

    .line 111
    .line 112
    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    nop

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

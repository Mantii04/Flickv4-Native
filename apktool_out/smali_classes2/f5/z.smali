.class public final Lf5/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll/m2;


# instance fields
.field public final synthetic b:Lflix/com/vision/tv/PlayerActivityLiveExternal;


# direct methods
.method public constructor <init>(Lflix/com/vision/tv/PlayerActivityLiveExternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lf5/z;->b:Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lflix/com/vision/R$id;->action_episodes:I

    .line 6
    .line 7
    iget-object v2, p0, Lf5/z;->b:Lflix/com/vision/tv/PlayerActivityLiveExternal;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    :try_start_0
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    iget v0, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->w:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    iget-object v0, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->r:Landroid/view/animation/Animation;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    sget v1, Lflix/com/vision/R$id;->action_close:I

    .line 42
    .line 43
    if-ne v0, v1, :cond_2

    .line 44
    .line 45
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iget-object v0, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->s:Landroid/view/animation/Animation;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v2, Lflix/com/vision/tv/PlayerActivityLiveExternal;->m:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    const/16 v0, 0x8

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    return p1

    .line 69
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 70
    .line 71
    invoke-direct {p1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget v0, Lflix/com/vision/R$string;->exit_label:I

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lf5/w;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    .line 94
    .line 95
    sget v0, Lflix/com/vision/R$string;->stop_playback_exit_mess:I

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    sget v0, Lflix/com/vision/R$string;->yes_label:I

    .line 105
    .line 106
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lf5/x;

    .line 111
    .line 112
    invoke-direct {v1, p0}, Lf5/x;-><init>(Lf5/z;)V

    .line 113
    .line 114
    .line 115
    const/4 v4, -0x1

    .line 116
    invoke-virtual {p1, v4, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    sget v0, Lflix/com/vision/R$string;->no_label:I

    .line 120
    .line 121
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    new-instance v1, Lf5/y;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 128
    .line 129
    .line 130
    const/4 v2, -0x3

    .line 131
    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catch_1
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 144
    .line 145
    .line 146
    :goto_1
    return v3
.end method

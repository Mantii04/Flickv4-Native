.class public final synthetic Ly4/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/SettingsActivity;

.field public final synthetic f:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/SettingsActivity;Landroid/app/ProgressDialog;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/b1;->b:I

    iput-object p1, p0, Ly4/b1;->e:Lflix/com/vision/activities/SettingsActivity;

    iput-object p2, p0, Ly4/b1;->f:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Ly4/b1;->e:Lflix/com/vision/activities/SettingsActivity;

    .line 3
    .line 4
    iget-object v2, p0, Ly4/b1;->f:Landroid/app/ProgressDialog;

    .line 5
    .line 6
    iget v3, p0, Ly4/b1;->b:I

    .line 7
    .line 8
    packed-switch v3, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget v0, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v0, "FlixVision_Backup_"

    .line 17
    .line 18
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 19
    .line 20
    const-string v4, "yyyyMMdd_HHmmss"

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ".json"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v4, Ljava/io/File;

    .line 62
    .line 63
    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance v3, Ljava/io/FileWriter;

    .line 67
    .line 68
    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, LP4/b;->getBackupJson()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 79
    .line 80
    .line 81
    new-instance v3, LB4/y;

    .line 82
    .line 83
    const/16 v4, 0xb

    .line 84
    .line 85
    invoke-direct {v3, v1, v2, v0, v4}, LB4/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    new-instance v3, LB4/y;

    .line 97
    .line 98
    const/16 v4, 0xc

    .line 99
    .line 100
    invoke-direct {v3, v1, v2, v0, v4}, LB4/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void

    .line 107
    :pswitch_0
    sget v3, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 113
    .line 114
    .line 115
    const-string v2, "Failed to read backup file"

    .line 116
    .line 117
    invoke-static {v1, v2, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_1
    sget v3, Lflix/com/vision/activities/SettingsActivity;->c2:I

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 124
    .line 125
    .line 126
    const-string v2, "Restore Successful! Restarting..."

    .line 127
    .line 128
    invoke-static {v1, v2, v0}, Lh5/i;->makeToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Landroid/os/Handler;

    .line 132
    .line 133
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 134
    .line 135
    .line 136
    new-instance v2, Ly4/Z0;

    .line 137
    .line 138
    const/4 v3, 0x2

    .line 139
    invoke-direct {v2, v1, v3}, Ly4/Z0;-><init>(Lflix/com/vision/activities/SettingsActivity;I)V

    .line 140
    .line 141
    .line 142
    const-wide/16 v3, 0x5dc

    .line 143
    .line 144
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

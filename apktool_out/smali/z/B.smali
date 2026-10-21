.class public final Lz/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/app/PendingIntent;

.field public h:Landroidx/core/graphics/drawable/IconCompat;

.field public i:I

.field public j:Z

.field public k:Lz/C;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Landroid/os/Bundle;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:I

.field public final t:Z

.field public final u:Landroid/app/Notification;

.field public final v:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lz/B;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/B;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/B;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/B;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lz/B;->j:Z

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lz/B;->o:Z

    .line 7
    iput v1, p0, Lz/B;->q:I

    .line 8
    iput v1, p0, Lz/B;->s:I

    .line 9
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lz/B;->u:Landroid/app/Notification;

    .line 10
    iput-object p1, p0, Lz/B;->a:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lz/B;->r:Ljava/lang/String;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    .line 13
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 14
    iput v1, p0, Lz/B;->i:I

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz/B;->v:Ljava/util/ArrayList;

    .line 16
    iput-boolean v0, p0, Lz/B;->t:Z

    return-void
.end method

.method public static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x1400

    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    return-object p0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lz/B;
    .locals 2

    .line 1
    iget-object v0, p0, Lz/B;->b:Ljava/util/ArrayList;

    new-instance v1, Lz/y;

    invoke-direct {v1, p1, p2, p3}, Lz/y;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Lz/y;)Lz/B;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lz/B;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    .line 1
    new-instance v0, Lz/M;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lz/M;-><init>(Lz/B;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lz/M;->build()Landroid/app/Notification;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->p:Landroid/os/Bundle;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lz/B;->p:Landroid/os/Bundle;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lz/B;->p:Landroid/os/Bundle;

    .line 13
    .line 14
    return-object v0
.end method

.method public setAutoCancel(Z)Lz/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->u:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x10

    .line 8
    .line 9
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, -0x11

    .line 15
    .line 16
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 17
    .line 18
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lz/B;
    .locals 0

    .line 1
    iput-object p1, p0, Lz/B;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lz/B;
    .locals 0

    .line 1
    iput-object p1, p0, Lz/B;->g:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lz/B;
    .locals 0

    .line 1
    invoke-static {p1}, Lz/B;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lz/B;->f:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lz/B;
    .locals 0

    .line 1
    invoke-static {p1}, Lz/B;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lz/B;->e:Ljava/lang/CharSequence;

    .line 6
    .line 7
    return-object p0
.end method

.method public setForegroundServiceBehavior(I)Lz/B;
    .locals 0

    .line 1
    iput p1, p0, Lz/B;->s:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lz/B;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lz/B;->a:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lz/D;->reduceLargeIconSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lz/B;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 16
    .line 17
    return-object p0
.end method

.method public setLocalOnly(Z)Lz/B;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz/B;->o:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setOngoing(Z)Lz/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->u:Landroid/app/Notification;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x2

    .line 8
    .line 9
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget p1, v0, Landroid/app/Notification;->flags:I

    .line 13
    .line 14
    and-int/lit8 p1, p1, -0x3

    .line 15
    .line 16
    iput p1, v0, Landroid/app/Notification;->flags:I

    .line 17
    .line 18
    return-object p0
.end method

.method public setPriority(I)Lz/B;
    .locals 0

    .line 1
    iput p1, p0, Lz/B;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setProgress(IIZ)Lz/B;
    .locals 0

    .line 1
    iput p1, p0, Lz/B;->l:I

    .line 2
    .line 3
    iput p2, p0, Lz/B;->m:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lz/B;->n:Z

    .line 6
    .line 7
    return-object p0
.end method

.method public setShowWhen(Z)Lz/B;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lz/B;->j:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setSmallIcon(I)Lz/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->u:Landroid/app/Notification;

    .line 2
    .line 3
    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setStyle(Lz/C;)Lz/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->k:Lz/C;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lz/B;->k:Lz/C;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lz/C;->setBuilder(Lz/B;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lz/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->u:Landroid/app/Notification;

    .line 2
    .line 3
    invoke-static {p1}, Lz/B;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 8
    .line 9
    return-object p0
.end method

.method public setVisibility(I)Lz/B;
    .locals 0

    .line 1
    iput p1, p0, Lz/B;->q:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setWhen(J)Lz/B;
    .locals 1

    .line 1
    iget-object v0, p0, Lz/B;->u:Landroid/app/Notification;

    .line 2
    .line 3
    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 4
    .line 5
    return-object p0
.end method

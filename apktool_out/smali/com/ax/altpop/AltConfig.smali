.class public Lcom/ax/altpop/AltConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private activityClass:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private bwLimit:I

.field private delay:I

.field private fg:Z

.field private icon:I

.field private loggable:Z

.field private notification:Landroid/app/Notification;

.field private notificationMessage:Ljava/lang/String;

.field private onBoot:Z

.field private publisher:Ljava/lang/String;

.field private timeOut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/ax/altpop/AltConfig;->publisher:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/ax/altpop/AltConfig;->fg:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/ax/altpop/AltConfig;->onBoot:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/ax/altpop/AltConfig;->loggable:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/ax/altpop/AltConfig;->bwLimit:I

    .line 16
    .line 17
    iput v0, p0, Lcom/ax/altpop/AltConfig;->delay:I

    .line 18
    .line 19
    iput v0, p0, Lcom/ax/altpop/AltConfig;->timeOut:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getActivityClass()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltConfig;->activityClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltConfig;->appName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBWLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ax/altpop/AltConfig;->bwLimit:I

    .line 2
    .line 3
    return v0
.end method

.method public getDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ax/altpop/AltConfig;->delay:I

    .line 2
    .line 3
    return v0
.end method

.method public getFg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ax/altpop/AltConfig;->fg:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ax/altpop/AltConfig;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoggable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ax/altpop/AltConfig;->loggable:Z

    .line 2
    .line 3
    return v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltConfig;->notification:Landroid/app/Notification;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNotificationMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltConfig;->notificationMessage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnBoot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ax/altpop/AltConfig;->onBoot:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ax/altpop/AltConfig;->publisher:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ax/altpop/AltConfig;->timeOut:I

    .line 2
    .line 3
    return v0
.end method

.method public setBWLimit(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ax/altpop/AltConfig;->bwLimit:I

    .line 2
    .line 3
    iput p2, p0, Lcom/ax/altpop/AltConfig;->timeOut:I

    .line 4
    .line 5
    return-void
.end method

.method public setCustomNotification(Landroid/app/Notification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ax/altpop/AltConfig;->notification:Landroid/app/Notification;

    .line 2
    .line 3
    return-void
.end method

.method public setDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ax/altpop/AltConfig;->delay:I

    .line 2
    .line 3
    return-void
.end method

.method public setFg(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ax/altpop/AltConfig;->fg:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLoggable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ax/altpop/AltConfig;->loggable:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationConfiguration(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ax/altpop/AltConfig;->notificationMessage:Ljava/lang/String;

    .line 2
    .line 3
    iput p3, p0, Lcom/ax/altpop/AltConfig;->icon:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/ax/altpop/AltConfig;->activityClass:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ax/altpop/AltConfig;->appName:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public setOnBoot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ax/altpop/AltConfig;->onBoot:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, LQ1/c;->w:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/ax/altpop/AltConfig;->publisher:Ljava/lang/String;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Unsupported Publisher Name"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

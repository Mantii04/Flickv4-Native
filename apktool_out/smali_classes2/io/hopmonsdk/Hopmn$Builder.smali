.class public Lio/hopmonsdk/Hopmn$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/hopmonsdk/Hopmn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private bandwidthOptEnabled:Z

.field private bandwidthOptEndpoint:Ljava/lang/String;

.field private bandwidthOptKey:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private delayMillis:J

.field private enable3proxyLogging:Z

.field private foregroundService:Z

.field private getEndpoint:Ljava/lang/String;

.field private imsdkActivation:Z

.field private loggable:Z

.field private mobileForeground:Z

.field private privacyPolicyUrl:Ljava/lang/String;

.field private publisher:Ljava/lang/String;

.field private regEndpoint:Ljava/lang/String;

.field private seedServersCsv:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "888"

    iput-object v0, p0, Lio/hopmonsdk/Hopmn$Builder;->category:Ljava/lang/String;

    sget-object v0, Lio/hopmonsdk/Hopmn;->u:Lio/hopmonsdk/Hopmn;

    const-string v0, "/?regcc=1&pub={publisher}&uid={uid}&cid={cid}&ver={ver}"

    iput-object v0, p0, Lio/hopmonsdk/Hopmn$Builder;->regEndpoint:Ljava/lang/String;

    const-string v0, "/?get=1&cc={country}&pub={publisher}&uid={uid}&foreground={foreground}&ver={ver}"

    iput-object v0, p0, Lio/hopmonsdk/Hopmn$Builder;->getEndpoint:Ljava/lang/String;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lio/hopmonsdk/Hopmn$Builder;->delayMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->foregroundService:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->imsdkActivation:Z

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEnabled:Z

    const-string v0, "https://pubs.abnetworks.io/api"

    iput-object v0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEndpoint:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lio/hopmonsdk/Hopmn$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEnabled:Z

    return p0
.end method

.method public static synthetic access$002(Lio/hopmonsdk/Hopmn$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEnabled:Z

    return p1
.end method

.method public static synthetic access$100(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lio/hopmonsdk/Hopmn$Builder;)J
    .locals 2

    iget-wide v0, p0, Lio/hopmonsdk/Hopmn$Builder;->delayMillis:J

    return-wide v0
.end method

.method public static synthetic access$102(Lio/hopmonsdk/Hopmn$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptKey:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lio/hopmonsdk/Hopmn$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/hopmonsdk/Hopmn$Builder;->loggable:Z

    return p0
.end method

.method public static synthetic access$1200(Lio/hopmonsdk/Hopmn$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/hopmonsdk/Hopmn$Builder;->foregroundService:Z

    return p0
.end method

.method public static synthetic access$1300(Lio/hopmonsdk/Hopmn$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/hopmonsdk/Hopmn$Builder;->mobileForeground:Z

    return p0
.end method

.method public static synthetic access$1400(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->seedServersCsv:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->privacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lio/hopmonsdk/Hopmn$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEndpoint:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lio/hopmonsdk/Hopmn$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/hopmonsdk/Hopmn$Builder;->imsdkActivation:Z

    return p0
.end method

.method public static synthetic access$302(Lio/hopmonsdk/Hopmn$Builder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/hopmonsdk/Hopmn$Builder;->imsdkActivation:Z

    return p1
.end method

.method public static synthetic access$500(Lio/hopmonsdk/Hopmn$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lio/hopmonsdk/Hopmn$Builder;->enable3proxyLogging:Z

    return p0
.end method

.method public static synthetic access$600(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->publisher:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->regEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lio/hopmonsdk/Hopmn$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/hopmonsdk/Hopmn$Builder;->getEndpoint:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lio/hopmonsdk/Hopmn;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/hopmonsdk/Hopmn$Builder;->publisher:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lio/hopmonsdk/Hopmn;->a(Landroid/content/Context;Lio/hopmonsdk/Hopmn$Builder;)Lio/hopmonsdk/Hopmn;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The publisher cannot be <null> or empty, you have to specify one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lio/hopmonsdk/Hopmn;
    .locals 2

    .line 2
    iget-object v0, p0, Lio/hopmonsdk/Hopmn$Builder;->publisher:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Lk5/a;

    invoke-direct {v0, p1}, Lk5/a;-><init>(Landroid/content/Context;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lio/hopmonsdk/Hopmn$Builder;->withForegroundService(Ljava/lang/Boolean;)Lio/hopmonsdk/Hopmn$Builder;

    const-string v1, "APPNAME"

    invoke-virtual {v0, v1, p2}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PUBLISHER_PACKAGE"

    invoke-virtual {v0, v1, p2}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ICON"

    invoke-virtual {v0, p2, p4}, Lk5/a;->set(Ljava/lang/String;I)V

    const-string p2, "MESSAGE"

    invoke-virtual {v0, p2, p3}, Lk5/a;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lio/hopmonsdk/Hopmn;->a(Landroid/content/Context;Lio/hopmonsdk/Hopmn$Builder;)Lio/hopmonsdk/Hopmn;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The icon cannot be <null> or empty, you have to specify one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The message cannot be <null> or empty, you have to specify one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The Appname cannot be <null> or empty, you have to specify one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The publisher cannot be <null> or empty, you have to specify one"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enable3proxyLogging()Lio/hopmonsdk/Hopmn$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->enable3proxyLogging:Z

    return-object p0
.end method

.method public loggable()Lio/hopmonsdk/Hopmn$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->loggable:Z

    return-object p0
.end method

.method public withBandwidthOptReporting()Lio/hopmonsdk/Hopmn$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEnabled:Z

    return-object p0
.end method

.method public withBandwidthOptReporting(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEnabled:Z

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptKey:Ljava/lang/String;

    return-object p0
.end method

.method public withBandwidthOptReporting(Ljava/lang/String;Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEnabled:Z

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptKey:Ljava/lang/String;

    iput-object p2, p0, Lio/hopmonsdk/Hopmn$Builder;->bandwidthOptEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public withCategory(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->category:Ljava/lang/String;

    return-object p0
.end method

.method public withDelayInMillis(J)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-wide p1, p0, Lio/hopmonsdk/Hopmn$Builder;->delayMillis:J

    return-object p0
.end method

.method public withForegroundService(Ljava/lang/Boolean;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->foregroundService:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Hopmn"

    const-string v1, "withForegroundService: %s"

    invoke-static {p1, v1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public withGetEndpoint(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->getEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public withImsdkActivation(Z)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/hopmonsdk/Hopmn$Builder;->imsdkActivation:Z

    return-object p0
.end method

.method public withMobileForeground(Ljava/lang/Boolean;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lio/hopmonsdk/Hopmn$Builder;->mobileForeground:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Hopmn"

    const-string v1, "withMobileForeground: %s"

    invoke-static {p1, v1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public withPrivacyPolicyUrl(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->privacyPolicyUrl:Ljava/lang/String;

    return-object p0
.end method

.method public withPublisher(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 2

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->publisher:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Hopmn"

    const-string v1, "withPublisher: %s"

    invoke-static {p1, v1, v0}, Ls5/b;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public withRegEndpoint(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->regEndpoint:Ljava/lang/String;

    return-object p0
.end method

.method public withSeedServersCsv(Ljava/lang/String;)Lio/hopmonsdk/Hopmn$Builder;
    .locals 0

    iput-object p1, p0, Lio/hopmonsdk/Hopmn$Builder;->seedServersCsv:Ljava/lang/String;

    return-object p0
.end method

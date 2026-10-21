.class public final synthetic LZ2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb3/a;
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field public final synthetic b:J

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LZ2/m;Ljava/lang/Iterable;LS2/E;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ2/k;->e:Ljava/lang/Object;

    iput-object p2, p0, LZ2/k;->f:Ljava/lang/Object;

    iput-object p3, p0, LZ2/k;->j:Ljava/lang/Object;

    iput-wide p4, p0, LZ2/k;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ2/k;->e:Ljava/lang/Object;

    iput-object p2, p0, LZ2/k;->f:Ljava/lang/Object;

    iput-wide p3, p0, LZ2/k;->b:J

    iput-object p5, p0, LZ2/k;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, LZ2/k;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LZ2/m;

    .line 4
    .line 5
    iget-object v1, v0, LZ2/m;->c:La3/d;

    .line 6
    .line 7
    check-cast v1, La3/r;

    .line 8
    .line 9
    iget-object v2, p0, LZ2/k;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, La3/r;->recordFailure(Ljava/lang/Iterable;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, v0, LZ2/m;->g:Lc3/a;

    .line 17
    .line 18
    invoke-interface {v0}, Lc3/a;->getTime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iget-wide v4, p0, LZ2/k;->b:J

    .line 23
    .line 24
    add-long/2addr v2, v4

    .line 25
    iget-object v0, p0, LZ2/k;->j:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, LS2/E;

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2, v3}, La3/r;->recordNextCallTime(LS2/E;J)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public handle(Lcom/google/firebase/inject/Provider;)V
    .locals 7

    .line 1
    iget-object v0, p0, LZ2/k;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, LZ2/k;->f:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-wide v3, p0, LZ2/k;->b:J

    iget-object v0, p0, LZ2/k;->j:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/crashlytics/internal/model/StaticSessionData;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;->a(Ljava/lang/String;Ljava/lang/String;JLcom/google/firebase/crashlytics/internal/model/StaticSessionData;Lcom/google/firebase/inject/Provider;)V

    return-void
.end method

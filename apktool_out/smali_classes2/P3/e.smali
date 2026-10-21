.class public final LP3/e;
.super LP3/k;
.source "SourceFile"


# static fields
.field public static final e:LP3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LP3/e;

    .line 2
    .line 3
    const-string v1, "CharMatcher.ascii()"

    .line 4
    .line 5
    invoke-direct {v0, v1}, LP3/k;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, LP3/e;->e:LP3/e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public matches(C)Z
    .locals 1

    .line 1
    const/16 v0, 0x7f

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    return p1
.end method

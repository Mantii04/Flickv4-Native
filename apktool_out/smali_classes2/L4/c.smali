.class public final LL4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, LL4/c;->a:J

    .line 7
    iput-wide p3, p0, LL4/c;->b:J

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, LL4/c;->a:J

    .line 3
    iput-wide p3, p0, LL4/c;->b:J

    .line 4
    iput-object p5, p0, LL4/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL4/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

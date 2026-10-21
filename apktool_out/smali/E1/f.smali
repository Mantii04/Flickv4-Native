.class public final LE1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:LG1/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "ConstraintsCmdHandler"

    .line 2
    .line 3
    invoke-static {v0}, LB1/t;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, LE1/f;->d:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILE1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LE1/f;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, LE1/f;->b:I

    .line 7
    .line 8
    iget-object p1, p3, LE1/m;->m:LC1/G;

    .line 9
    .line 10
    invoke-virtual {p1}, LC1/G;->getTrackers()LI1/p;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance p2, LG1/e;

    .line 15
    .line 16
    const/4 p3, 0x0

    .line 17
    invoke-direct {p2, p1, p3}, LG1/e;-><init>(LI1/p;LG1/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, LE1/f;->c:LG1/e;

    .line 21
    .line 22
    return-void
.end method

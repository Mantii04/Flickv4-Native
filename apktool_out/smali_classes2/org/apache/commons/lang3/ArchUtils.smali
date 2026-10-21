.class public Lorg/apache/commons/lang3/ArchUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ARCH_TO_PROCESSOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/arch/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "Key "

    .line 16
    .line 17
    const-string v1, " already exists in processor map"

    .line 18
    .line 19
    invoke-static {v0, p0, v1}, LA/i;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method private static varargs addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-static {v2, p0}, Lorg/apache/commons/lang3/ArchUtils;->addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method public static getProcessor()Lorg/apache/commons/lang3/arch/Processor;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_ARCH:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArchUtils;->getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor;

    return-object p0
.end method

.method private static init()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_32Bit()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_64Bit()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_32Bit()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_64Bit()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_32Bit()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_64Bit()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static init_IA64_32Bit()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "ia64_32"

    .line 11
    .line 12
    const-string v2, "ia64n"

    .line 13
    .line 14
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static init_IA64_64Bit()V
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "ia64"

    .line 11
    .line 12
    const-string v2, "ia64w"

    .line 13
    .line 14
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static init_PPC_32Bit()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "power_pc"

    .line 11
    .line 12
    const-string v2, "power_rs"

    .line 13
    .line 14
    const-string v3, "ppc"

    .line 15
    .line 16
    const-string v4, "power"

    .line 17
    .line 18
    const-string v5, "powerpc"

    .line 19
    .line 20
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static init_PPC_64Bit()V
    .locals 6

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "power_pc64"

    .line 11
    .line 12
    const-string v2, "power_rs64"

    .line 13
    .line 14
    const-string v3, "ppc64"

    .line 15
    .line 16
    const-string v4, "power64"

    .line 17
    .line 18
    const-string v5, "powerpc64"

    .line 19
    .line 20
    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static init_X86_32Bit()V
    .locals 9

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 8
    .line 9
    .line 10
    const-string v7, "i686"

    .line 11
    .line 12
    const-string v8, "pentium"

    .line 13
    .line 14
    const-string v3, "x86"

    .line 15
    .line 16
    const-string v4, "i386"

    .line 17
    .line 18
    const-string v5, "i486"

    .line 19
    .line 20
    const-string v6, "i586"

    .line 21
    .line 22
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static init_X86_64Bit()V
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    .line 2
    .line 3
    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 4
    .line 5
    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "em64t"

    .line 11
    .line 12
    const-string v2, "universal"

    .line 13
    .line 14
    const-string v3, "x86_64"

    .line 15
    .line 16
    const-string v4, "amd64"

    .line 17
    .line 18
    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

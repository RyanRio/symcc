; ModuleID = 'hash.bc'
source_filename = "custom_programs/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.string_vector = type { i8*, i8* }
%struct.buffer_state = type { i8*, i64, i64, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@k = internal constant [64 x i32] [i32 1116352408, i32 1899447441, i32 -1245643825, i32 -373957723, i32 961987163, i32 1508970993, i32 -1841331548, i32 -1424204075, i32 -670586216, i32 310598401, i32 607225278, i32 1426881987, i32 1925078388, i32 -2132889090, i32 -1680079193, i32 -1046744716, i32 -459576895, i32 -272742522, i32 264347078, i32 604807628, i32 770255983, i32 1249150122, i32 1555081692, i32 1996064986, i32 -1740746414, i32 -1473132947, i32 -1341970488, i32 -1084653625, i32 -958395405, i32 -710438585, i32 113926993, i32 338241895, i32 666307205, i32 773529912, i32 1294757372, i32 1396182291, i32 1695183700, i32 1986661051, i32 -2117940946, i32 -1838011259, i32 -1564481375, i32 -1474664885, i32 -1035236496, i32 -949202525, i32 -778901479, i32 -694614492, i32 -200395387, i32 275423344, i32 430227734, i32 506948616, i32 659060556, i32 883997877, i32 958139571, i32 1322822218, i32 1537002063, i32 1747873779, i32 1955562222, i32 2024104815, i32 -2067236844, i32 -1933114872, i32 -1866530822, i32 -1538233109, i32 -1090935817, i32 -965641998], align 16
@.str = private unnamed_addr constant [18 x i8] c"Failed to read x\0A\00", align 1
@STRING_VECTORS = internal constant [1 x %struct.string_vector] [%struct.string_vector { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i32 0, i32 0) }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"input: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"hash : %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"FAILURE!\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"SUCCESS!\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @__sym_ctor, i8* null }]

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_sha_256(i8* %0, i8* %1, i64 %2) #0 {
  call void @_sym_notify_basic_block(i64 16227056)
  %4 = call i8* @_sym_get_parameter_expression(i8 0)
  %5 = call i8* @_sym_get_parameter_expression(i8 1)
  %6 = call i8* @_sym_get_parameter_expression(i8 2)
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i8], align 16
  %19 = alloca %struct.buffer_state, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [64 x i32], align 16
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = ptrtoint i8** %7 to i64
  call void @_sym_write_memory(i64 %39, i64 8, i8* %4, i8 1)
  store i8* %0, i8** %7, align 8
  %40 = ptrtoint i8** %8 to i64
  call void @_sym_write_memory(i64 %40, i64 8, i8* %5, i8 1)
  store i8* %1, i8** %8, align 8
  %41 = ptrtoint i64* %9 to i64
  call void @_sym_write_memory(i64 %41, i64 8, i8* %6, i8 1)
  store i64 %2, i64* %9, align 8
  %42 = ptrtoint i32* %10 to i64
  call void @_sym_write_memory(i64 %42, i64 4, i8* null, i8 1)
  store i32 1779033703, i32* %10, align 4
  %43 = ptrtoint i32* %11 to i64
  call void @_sym_write_memory(i64 %43, i64 4, i8* null, i8 1)
  store i32 -1150833019, i32* %11, align 4
  %44 = ptrtoint i32* %12 to i64
  call void @_sym_write_memory(i64 %44, i64 4, i8* null, i8 1)
  store i32 1013904242, i32* %12, align 4
  %45 = ptrtoint i32* %13 to i64
  call void @_sym_write_memory(i64 %45, i64 4, i8* null, i8 1)
  store i32 -1521486534, i32* %13, align 4
  %46 = ptrtoint i32* %14 to i64
  call void @_sym_write_memory(i64 %46, i64 4, i8* null, i8 1)
  store i32 1359893119, i32* %14, align 4
  %47 = ptrtoint i32* %15 to i64
  call void @_sym_write_memory(i64 %47, i64 4, i8* null, i8 1)
  store i32 -1694144372, i32* %15, align 4
  %48 = ptrtoint i32* %16 to i64
  call void @_sym_write_memory(i64 %48, i64 4, i8* null, i8 1)
  store i32 528734635, i32* %16, align 4
  %49 = ptrtoint i32* %17 to i64
  call void @_sym_write_memory(i64 %49, i64 4, i8* null, i8 1)
  store i32 1541459225, i32* %17, align 4
  %50 = ptrtoint i8** %8 to i64
  %51 = call i8* @_sym_read_memory(i64 %50, i64 8, i8 1)
  %52 = load i8*, i8** %8, align 8
  %53 = ptrtoint i64* %9 to i64
  %54 = call i8* @_sym_read_memory(i64 %53, i64 8, i8 1)
  %55 = load i64, i64* %9, align 8
  call void @_sym_notify_call(i64 16643872)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* %51)
  call void @_sym_set_parameter_expression(i8 2, i8* %54)
  call void @init_buf_state(%struct.buffer_state* %19, i8* %52, i64 %55)
  call void @_sym_notify_ret(i64 16643872)
  br label %56

56:                                               ; preds = %1593, %3
  call void @_sym_notify_basic_block(i64 16386480)
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  call void @_sym_notify_call(i64 16644840)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %58 = call i32 @calc_chunk(i8* %57, %struct.buffer_state* %19)
  call void @_sym_notify_ret(i64 16644840)
  %59 = call i8* @_sym_get_return_expression()
  %60 = icmp eq i8* null, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = call i8* @_sym_build_integer(i64 0, i8 32)
  %63 = call i8* @_sym_build_not_equal(i8* %59, i8* %62)
  br label %64

64:                                               ; preds = %56, %61
  %65 = phi i8* [ null, %56 ], [ %63, %61 ]
  %66 = icmp ne i32 %58, 0
  %67 = icmp eq i8* null, %65
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @_sym_push_path_constraint(i8* %65, i1 %66, i64 16644392, i32 39, i32 0)
  br label %69

69:                                               ; preds = %64, %68
  br i1 %66, label %70, label %1597

70:                                               ; preds = %69
  call void @_sym_notify_basic_block(i64 16386672)
  %71 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %72 = ptrtoint i8** %29 to i64
  call void @_sym_write_memory(i64 %72, i64 8, i8* null, i8 1)
  store i8* %71, i8** %29, align 8
  %73 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 0
  %74 = bitcast i32* %73 to i8*
  call void @_sym_memset(i8* %74, i8* null, i64 256)
  call void @llvm.memset.p0i8.i64(i8* align 16 %74, i8 0, i64 256, i1 false)
  %75 = ptrtoint i32* %30 to i64
  call void @_sym_write_memory(i64 %75, i64 4, i8* null, i8 1)
  store i32 0, i32* %30, align 4
  br label %76

76:                                               ; preds = %317, %70
  call void @_sym_notify_basic_block(i64 16647312)
  %77 = ptrtoint i32* %30 to i64
  %78 = call i8* @_sym_read_memory(i64 %77, i64 4, i8 1)
  %79 = load i32, i32* %30, align 4
  %80 = icmp eq i8* null, %78
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = call i8* @_sym_build_integer(i64 16, i8 32)
  %83 = call i8* @_sym_build_signed_less_than(i8* %78, i8* %82)
  br label %84

84:                                               ; preds = %76, %81
  %85 = phi i8* [ null, %76 ], [ %83, %81 ]
  %86 = icmp slt i32 %79, 16
  %87 = icmp eq i8* null, %85
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  call void @_sym_push_path_constraint(i8* %85, i1 %86, i64 16647960, i32 39, i32 1)
  br label %89

89:                                               ; preds = %84, %88
  br i1 %86, label %90, label %321

90:                                               ; preds = %89
  call void @_sym_notify_basic_block(i64 16647568)
  %91 = ptrtoint i8** %29 to i64
  %92 = call i8* @_sym_read_memory(i64 %91, i64 8, i8 1)
  %93 = load i8*, i8** %29, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = ptrtoint i8* %94 to i64
  %96 = icmp eq i8* null, %92
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = call i8* @_sym_build_integer(i64 %95, i8 64)
  %99 = call i8* @_sym_build_equal(i8* %92, i8* %98)
  call void @_sym_push_path_constraint(i8* %99, i1 true, i64 16648080, i32 39, i32 2)
  br label %100

100:                                              ; preds = %90, %97
  %101 = ptrtoint i8* %94 to i64
  %102 = call i8* @_sym_read_memory(i64 %101, i64 1, i8 1)
  %103 = load i8, i8* %94, align 1
  %104 = icmp eq i8* null, %102
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call i8* @_sym_build_zext(i8* %102, i8 24)
  br label %107

107:                                              ; preds = %100, %105
  %108 = phi i8* [ null, %100 ], [ %106, %105 ]
  %109 = zext i8 %103 to i32
  %110 = icmp eq i8* null, %108
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = call i8* @_sym_build_integer(i64 24, i8 32)
  %113 = call i8* @_sym_build_shift_left(i8* %108, i8* %112)
  br label %114

114:                                              ; preds = %107, %111
  %115 = phi i8* [ null, %107 ], [ %113, %111 ]
  %116 = shl i32 %109, 24
  %117 = ptrtoint i8** %29 to i64
  %118 = call i8* @_sym_read_memory(i64 %117, i64 8, i8 1)
  %119 = load i8*, i8** %29, align 8
  %120 = icmp eq i8* null, %118
  %121 = and i1 true, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %114
  %123 = call i8* @_sym_build_integer(i64 1, i8 64)
  %124 = call i8* @_sym_build_integer(i64 1, i8 64)
  %125 = call i8* @_sym_build_mul(i8* %123, i8* %124)
  %126 = call i8* @_sym_build_add(i8* %125, i8* %118)
  br label %127

127:                                              ; preds = %114, %122
  %128 = phi i8* [ null, %114 ], [ %126, %122 ]
  %129 = getelementptr inbounds i8, i8* %119, i64 1
  %130 = ptrtoint i8* %129 to i64
  %131 = icmp eq i8* null, %128
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = call i8* @_sym_build_integer(i64 %130, i8 64)
  %134 = call i8* @_sym_build_equal(i8* %128, i8* %133)
  call void @_sym_push_path_constraint(i8* %134, i1 true, i64 16648592, i32 39, i32 3)
  br label %135

135:                                              ; preds = %127, %132
  %136 = ptrtoint i8* %129 to i64
  %137 = call i8* @_sym_read_memory(i64 %136, i64 1, i8 1)
  %138 = load i8, i8* %129, align 1
  %139 = icmp eq i8* null, %137
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = call i8* @_sym_build_zext(i8* %137, i8 24)
  br label %142

142:                                              ; preds = %135, %140
  %143 = phi i8* [ null, %135 ], [ %141, %140 ]
  %144 = zext i8 %138 to i32
  %145 = icmp eq i8* null, %143
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = call i8* @_sym_build_integer(i64 16, i8 32)
  %148 = call i8* @_sym_build_shift_left(i8* %143, i8* %147)
  br label %149

149:                                              ; preds = %142, %146
  %150 = phi i8* [ null, %142 ], [ %148, %146 ]
  %151 = shl i32 %144, 16
  %152 = icmp eq i8* null, %115
  %153 = icmp eq i8* null, %150
  %154 = and i1 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %149
  br i1 %152, label %156, label %159

156:                                              ; preds = %155
  %157 = zext i32 %116 to i64
  %158 = call i8* @_sym_build_integer(i64 %157, i8 32)
  br label %159

159:                                              ; preds = %155, %156
  %160 = phi i8* [ %115, %155 ], [ %158, %156 ]
  br i1 %153, label %161, label %164

161:                                              ; preds = %159
  %162 = zext i32 %151 to i64
  %163 = call i8* @_sym_build_integer(i64 %162, i8 32)
  br label %164

164:                                              ; preds = %159, %161
  %165 = phi i8* [ %150, %159 ], [ %163, %161 ]
  %166 = call i8* @_sym_build_or(i8* %160, i8* %165)
  br label %167

167:                                              ; preds = %149, %164
  %168 = phi i8* [ null, %149 ], [ %166, %164 ]
  %169 = or i32 %116, %151
  %170 = ptrtoint i8** %29 to i64
  %171 = call i8* @_sym_read_memory(i64 %170, i64 8, i8 1)
  %172 = load i8*, i8** %29, align 8
  %173 = icmp eq i8* null, %171
  %174 = and i1 true, %173
  br i1 %174, label %180, label %175

175:                                              ; preds = %167
  %176 = call i8* @_sym_build_integer(i64 2, i8 64)
  %177 = call i8* @_sym_build_integer(i64 1, i8 64)
  %178 = call i8* @_sym_build_mul(i8* %176, i8* %177)
  %179 = call i8* @_sym_build_add(i8* %178, i8* %171)
  br label %180

180:                                              ; preds = %167, %175
  %181 = phi i8* [ null, %167 ], [ %179, %175 ]
  %182 = getelementptr inbounds i8, i8* %172, i64 2
  %183 = ptrtoint i8* %182 to i64
  %184 = icmp eq i8* null, %181
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = call i8* @_sym_build_integer(i64 %183, i8 64)
  %187 = call i8* @_sym_build_equal(i8* %181, i8* %186)
  call void @_sym_push_path_constraint(i8* %187, i1 true, i64 16649104, i32 39, i32 4)
  br label %188

188:                                              ; preds = %180, %185
  %189 = ptrtoint i8* %182 to i64
  %190 = call i8* @_sym_read_memory(i64 %189, i64 1, i8 1)
  %191 = load i8, i8* %182, align 1
  %192 = icmp eq i8* null, %190
  br i1 %192, label %195, label %193

193:                                              ; preds = %188
  %194 = call i8* @_sym_build_zext(i8* %190, i8 24)
  br label %195

195:                                              ; preds = %188, %193
  %196 = phi i8* [ null, %188 ], [ %194, %193 ]
  %197 = zext i8 %191 to i32
  %198 = icmp eq i8* null, %196
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = call i8* @_sym_build_integer(i64 8, i8 32)
  %201 = call i8* @_sym_build_shift_left(i8* %196, i8* %200)
  br label %202

202:                                              ; preds = %195, %199
  %203 = phi i8* [ null, %195 ], [ %201, %199 ]
  %204 = shl i32 %197, 8
  %205 = icmp eq i8* null, %168
  %206 = icmp eq i8* null, %203
  %207 = and i1 %205, %206
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  br i1 %205, label %209, label %212

209:                                              ; preds = %208
  %210 = zext i32 %169 to i64
  %211 = call i8* @_sym_build_integer(i64 %210, i8 32)
  br label %212

212:                                              ; preds = %208, %209
  %213 = phi i8* [ %168, %208 ], [ %211, %209 ]
  br i1 %206, label %214, label %217

214:                                              ; preds = %212
  %215 = zext i32 %204 to i64
  %216 = call i8* @_sym_build_integer(i64 %215, i8 32)
  br label %217

217:                                              ; preds = %212, %214
  %218 = phi i8* [ %203, %212 ], [ %216, %214 ]
  %219 = call i8* @_sym_build_or(i8* %213, i8* %218)
  br label %220

220:                                              ; preds = %202, %217
  %221 = phi i8* [ null, %202 ], [ %219, %217 ]
  %222 = or i32 %169, %204
  %223 = ptrtoint i8** %29 to i64
  %224 = call i8* @_sym_read_memory(i64 %223, i64 8, i8 1)
  %225 = load i8*, i8** %29, align 8
  %226 = icmp eq i8* null, %224
  %227 = and i1 true, %226
  br i1 %227, label %233, label %228

228:                                              ; preds = %220
  %229 = call i8* @_sym_build_integer(i64 3, i8 64)
  %230 = call i8* @_sym_build_integer(i64 1, i8 64)
  %231 = call i8* @_sym_build_mul(i8* %229, i8* %230)
  %232 = call i8* @_sym_build_add(i8* %231, i8* %224)
  br label %233

233:                                              ; preds = %220, %228
  %234 = phi i8* [ null, %220 ], [ %232, %228 ]
  %235 = getelementptr inbounds i8, i8* %225, i64 3
  %236 = ptrtoint i8* %235 to i64
  %237 = icmp eq i8* null, %234
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = call i8* @_sym_build_integer(i64 %236, i8 64)
  %240 = call i8* @_sym_build_equal(i8* %234, i8* %239)
  call void @_sym_push_path_constraint(i8* %240, i1 true, i64 16649664, i32 39, i32 5)
  br label %241

241:                                              ; preds = %233, %238
  %242 = ptrtoint i8* %235 to i64
  %243 = call i8* @_sym_read_memory(i64 %242, i64 1, i8 1)
  %244 = load i8, i8* %235, align 1
  %245 = icmp eq i8* null, %243
  br i1 %245, label %248, label %246

246:                                              ; preds = %241
  %247 = call i8* @_sym_build_zext(i8* %243, i8 24)
  br label %248

248:                                              ; preds = %241, %246
  %249 = phi i8* [ null, %241 ], [ %247, %246 ]
  %250 = zext i8 %244 to i32
  %251 = icmp eq i8* null, %221
  %252 = icmp eq i8* null, %249
  %253 = and i1 %251, %252
  br i1 %253, label %266, label %254

254:                                              ; preds = %248
  br i1 %251, label %255, label %258

255:                                              ; preds = %254
  %256 = zext i32 %222 to i64
  %257 = call i8* @_sym_build_integer(i64 %256, i8 32)
  br label %258

258:                                              ; preds = %254, %255
  %259 = phi i8* [ %221, %254 ], [ %257, %255 ]
  br i1 %252, label %260, label %263

260:                                              ; preds = %258
  %261 = zext i32 %250 to i64
  %262 = call i8* @_sym_build_integer(i64 %261, i8 32)
  br label %263

263:                                              ; preds = %258, %260
  %264 = phi i8* [ %249, %258 ], [ %262, %260 ]
  %265 = call i8* @_sym_build_or(i8* %259, i8* %264)
  br label %266

266:                                              ; preds = %248, %263
  %267 = phi i8* [ null, %248 ], [ %265, %263 ]
  %268 = or i32 %222, %250
  %269 = ptrtoint i32* %30 to i64
  %270 = call i8* @_sym_read_memory(i64 %269, i64 4, i8 1)
  %271 = load i32, i32* %30, align 4
  %272 = icmp eq i8* null, %270
  br i1 %272, label %275, label %273

273:                                              ; preds = %266
  %274 = call i8* @_sym_build_sext(i8* %270, i8 32)
  br label %275

275:                                              ; preds = %266, %273
  %276 = phi i8* [ null, %266 ], [ %274, %273 ]
  %277 = sext i32 %271 to i64
  %278 = icmp eq i8* null, %276
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = call i8* @_sym_build_integer(i64 4, i8 64)
  %281 = ptrtoint [64 x i32]* %28 to i64
  %282 = call i8* @_sym_build_integer(i64 %281, i8 64)
  %283 = call i8* @_sym_build_mul(i8* %276, i8* %280)
  %284 = call i8* @_sym_build_add(i8* %283, i8* %282)
  br label %285

285:                                              ; preds = %275, %279
  %286 = phi i8* [ null, %275 ], [ %284, %279 ]
  %287 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %277
  %288 = ptrtoint i32* %287 to i64
  %289 = icmp eq i8* null, %286
  br i1 %289, label %293, label %290

290:                                              ; preds = %285
  %291 = call i8* @_sym_build_integer(i64 %288, i8 64)
  %292 = call i8* @_sym_build_equal(i8* %286, i8* %291)
  call void @_sym_push_path_constraint(i8* %292, i1 true, i64 16650200, i32 39, i32 6)
  br label %293

293:                                              ; preds = %285, %290
  %294 = ptrtoint i32* %287 to i64
  call void @_sym_write_memory(i64 %294, i64 4, i8* %267, i8 1)
  store i32 %268, i32* %287, align 4
  %295 = ptrtoint i8** %29 to i64
  %296 = call i8* @_sym_read_memory(i64 %295, i64 8, i8 1)
  %297 = load i8*, i8** %29, align 8
  %298 = icmp eq i8* null, %296
  %299 = and i1 true, %298
  br i1 %299, label %305, label %300

300:                                              ; preds = %293
  %301 = call i8* @_sym_build_integer(i64 4, i8 64)
  %302 = call i8* @_sym_build_integer(i64 1, i8 64)
  %303 = call i8* @_sym_build_mul(i8* %301, i8* %302)
  %304 = call i8* @_sym_build_add(i8* %303, i8* %296)
  br label %305

305:                                              ; preds = %293, %300
  %306 = phi i8* [ null, %293 ], [ %304, %300 ]
  %307 = getelementptr inbounds i8, i8* %297, i64 4
  %308 = ptrtoint i8** %29 to i64
  call void @_sym_write_memory(i64 %308, i64 8, i8* %306, i8 1)
  store i8* %307, i8** %29, align 8
  br label %309

309:                                              ; preds = %305
  call void @_sym_notify_basic_block(i64 16647488)
  %310 = ptrtoint i32* %30 to i64
  %311 = call i8* @_sym_read_memory(i64 %310, i64 4, i8 1)
  %312 = load i32, i32* %30, align 4
  %313 = icmp eq i8* null, %311
  br i1 %313, label %317, label %314

314:                                              ; preds = %309
  %315 = call i8* @_sym_build_integer(i64 1, i8 32)
  %316 = call i8* @_sym_build_add(i8* %311, i8* %315)
  br label %317

317:                                              ; preds = %309, %314
  %318 = phi i8* [ null, %309 ], [ %316, %314 ]
  %319 = add nsw i32 %312, 1
  %320 = ptrtoint i32* %30 to i64
  call void @_sym_write_memory(i64 %320, i64 4, i8* %318, i8 1)
  store i32 %319, i32* %30, align 4
  br label %76

321:                                              ; preds = %89
  call void @_sym_notify_basic_block(i64 16644128)
  %322 = ptrtoint i32* %30 to i64
  call void @_sym_write_memory(i64 %322, i64 4, i8* null, i8 1)
  store i32 16, i32* %30, align 4
  br label %323

323:                                              ; preds = %808, %321
  call void @_sym_notify_basic_block(i64 16651488)
  %324 = ptrtoint i32* %30 to i64
  %325 = call i8* @_sym_read_memory(i64 %324, i64 4, i8 1)
  %326 = load i32, i32* %30, align 4
  %327 = icmp eq i8* null, %325
  br i1 %327, label %331, label %328

328:                                              ; preds = %323
  %329 = call i8* @_sym_build_integer(i64 64, i8 32)
  %330 = call i8* @_sym_build_signed_less_than(i8* %325, i8* %329)
  br label %331

331:                                              ; preds = %323, %328
  %332 = phi i8* [ null, %323 ], [ %330, %328 ]
  %333 = icmp slt i32 %326, 64
  %334 = icmp eq i8* null, %332
  br i1 %334, label %336, label %335

335:                                              ; preds = %331
  call void @_sym_push_path_constraint(i8* %332, i1 %333, i64 16652136, i32 39, i32 7)
  br label %336

336:                                              ; preds = %331, %335
  br i1 %333, label %337, label %812

337:                                              ; preds = %336
  call void @_sym_notify_basic_block(i64 16651744)
  %338 = ptrtoint i32* %30 to i64
  %339 = call i8* @_sym_read_memory(i64 %338, i64 4, i8 1)
  %340 = load i32, i32* %30, align 4
  %341 = icmp eq i8* null, %339
  br i1 %341, label %345, label %342

342:                                              ; preds = %337
  %343 = call i8* @_sym_build_integer(i64 15, i8 32)
  %344 = call i8* @_sym_build_sub(i8* %339, i8* %343)
  br label %345

345:                                              ; preds = %337, %342
  %346 = phi i8* [ null, %337 ], [ %344, %342 ]
  %347 = sub nsw i32 %340, 15
  %348 = icmp eq i8* null, %346
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = call i8* @_sym_build_sext(i8* %346, i8 32)
  br label %351

351:                                              ; preds = %345, %349
  %352 = phi i8* [ null, %345 ], [ %350, %349 ]
  %353 = sext i32 %347 to i64
  %354 = icmp eq i8* null, %352
  br i1 %354, label %361, label %355

355:                                              ; preds = %351
  %356 = call i8* @_sym_build_integer(i64 4, i8 64)
  %357 = ptrtoint [64 x i32]* %28 to i64
  %358 = call i8* @_sym_build_integer(i64 %357, i8 64)
  %359 = call i8* @_sym_build_mul(i8* %352, i8* %356)
  %360 = call i8* @_sym_build_add(i8* %359, i8* %358)
  br label %361

361:                                              ; preds = %351, %355
  %362 = phi i8* [ null, %351 ], [ %360, %355 ]
  %363 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %353
  %364 = ptrtoint i32* %363 to i64
  %365 = icmp eq i8* null, %362
  br i1 %365, label %369, label %366

366:                                              ; preds = %361
  %367 = call i8* @_sym_build_integer(i64 %364, i8 64)
  %368 = call i8* @_sym_build_equal(i8* %362, i8* %367)
  call void @_sym_push_path_constraint(i8* %368, i1 true, i64 16654888, i32 39, i32 8)
  br label %369

369:                                              ; preds = %361, %366
  %370 = ptrtoint i32* %363 to i64
  %371 = call i8* @_sym_read_memory(i64 %370, i64 4, i8 1)
  %372 = load i32, i32* %363, align 4
  call void @_sym_notify_call(i64 16655144)
  call void @_sym_set_parameter_expression(i8 0, i8* %371)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %373 = call i32 @right_rot(i32 %372, i32 7)
  call void @_sym_notify_ret(i64 16655144)
  %374 = call i8* @_sym_get_return_expression()
  %375 = ptrtoint i32* %30 to i64
  %376 = call i8* @_sym_read_memory(i64 %375, i64 4, i8 1)
  %377 = load i32, i32* %30, align 4
  %378 = icmp eq i8* null, %376
  br i1 %378, label %382, label %379

379:                                              ; preds = %369
  %380 = call i8* @_sym_build_integer(i64 15, i8 32)
  %381 = call i8* @_sym_build_sub(i8* %376, i8* %380)
  br label %382

382:                                              ; preds = %369, %379
  %383 = phi i8* [ null, %369 ], [ %381, %379 ]
  %384 = sub nsw i32 %377, 15
  %385 = icmp eq i8* null, %383
  br i1 %385, label %388, label %386

386:                                              ; preds = %382
  %387 = call i8* @_sym_build_sext(i8* %383, i8 32)
  br label %388

388:                                              ; preds = %382, %386
  %389 = phi i8* [ null, %382 ], [ %387, %386 ]
  %390 = sext i32 %384 to i64
  %391 = icmp eq i8* null, %389
  br i1 %391, label %398, label %392

392:                                              ; preds = %388
  %393 = call i8* @_sym_build_integer(i64 4, i8 64)
  %394 = ptrtoint [64 x i32]* %28 to i64
  %395 = call i8* @_sym_build_integer(i64 %394, i8 64)
  %396 = call i8* @_sym_build_mul(i8* %389, i8* %393)
  %397 = call i8* @_sym_build_add(i8* %396, i8* %395)
  br label %398

398:                                              ; preds = %388, %392
  %399 = phi i8* [ null, %388 ], [ %397, %392 ]
  %400 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %390
  %401 = ptrtoint i32* %400 to i64
  %402 = icmp eq i8* null, %399
  br i1 %402, label %406, label %403

403:                                              ; preds = %398
  %404 = call i8* @_sym_build_integer(i64 %401, i8 64)
  %405 = call i8* @_sym_build_equal(i8* %399, i8* %404)
  call void @_sym_push_path_constraint(i8* %405, i1 true, i64 16655496, i32 39, i32 9)
  br label %406

406:                                              ; preds = %398, %403
  %407 = ptrtoint i32* %400 to i64
  %408 = call i8* @_sym_read_memory(i64 %407, i64 4, i8 1)
  %409 = load i32, i32* %400, align 4
  call void @_sym_notify_call(i64 16655752)
  call void @_sym_set_parameter_expression(i8 0, i8* %408)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %410 = call i32 @right_rot(i32 %409, i32 18)
  call void @_sym_notify_ret(i64 16655752)
  %411 = call i8* @_sym_get_return_expression()
  %412 = icmp eq i8* null, %374
  %413 = icmp eq i8* null, %411
  %414 = and i1 %412, %413
  br i1 %414, label %427, label %415

415:                                              ; preds = %406
  br i1 %412, label %416, label %419

416:                                              ; preds = %415
  %417 = zext i32 %373 to i64
  %418 = call i8* @_sym_build_integer(i64 %417, i8 32)
  br label %419

419:                                              ; preds = %415, %416
  %420 = phi i8* [ %374, %415 ], [ %418, %416 ]
  br i1 %413, label %421, label %424

421:                                              ; preds = %419
  %422 = zext i32 %410 to i64
  %423 = call i8* @_sym_build_integer(i64 %422, i8 32)
  br label %424

424:                                              ; preds = %419, %421
  %425 = phi i8* [ %411, %419 ], [ %423, %421 ]
  %426 = call i8* @_sym_build_xor(i8* %420, i8* %425)
  br label %427

427:                                              ; preds = %406, %424
  %428 = phi i8* [ null, %406 ], [ %426, %424 ]
  %429 = xor i32 %373, %410
  %430 = ptrtoint i32* %30 to i64
  %431 = call i8* @_sym_read_memory(i64 %430, i64 4, i8 1)
  %432 = load i32, i32* %30, align 4
  %433 = icmp eq i8* null, %431
  br i1 %433, label %437, label %434

434:                                              ; preds = %427
  %435 = call i8* @_sym_build_integer(i64 15, i8 32)
  %436 = call i8* @_sym_build_sub(i8* %431, i8* %435)
  br label %437

437:                                              ; preds = %427, %434
  %438 = phi i8* [ null, %427 ], [ %436, %434 ]
  %439 = sub nsw i32 %432, 15
  %440 = icmp eq i8* null, %438
  br i1 %440, label %443, label %441

441:                                              ; preds = %437
  %442 = call i8* @_sym_build_sext(i8* %438, i8 32)
  br label %443

443:                                              ; preds = %437, %441
  %444 = phi i8* [ null, %437 ], [ %442, %441 ]
  %445 = sext i32 %439 to i64
  %446 = icmp eq i8* null, %444
  br i1 %446, label %453, label %447

447:                                              ; preds = %443
  %448 = call i8* @_sym_build_integer(i64 4, i8 64)
  %449 = ptrtoint [64 x i32]* %28 to i64
  %450 = call i8* @_sym_build_integer(i64 %449, i8 64)
  %451 = call i8* @_sym_build_mul(i8* %444, i8* %448)
  %452 = call i8* @_sym_build_add(i8* %451, i8* %450)
  br label %453

453:                                              ; preds = %443, %447
  %454 = phi i8* [ null, %443 ], [ %452, %447 ]
  %455 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %445
  %456 = ptrtoint i32* %455 to i64
  %457 = icmp eq i8* null, %454
  br i1 %457, label %461, label %458

458:                                              ; preds = %453
  %459 = call i8* @_sym_build_integer(i64 %456, i8 64)
  %460 = call i8* @_sym_build_equal(i8* %454, i8* %459)
  call void @_sym_push_path_constraint(i8* %460, i1 true, i64 16656104, i32 39, i32 10)
  br label %461

461:                                              ; preds = %453, %458
  %462 = ptrtoint i32* %455 to i64
  %463 = call i8* @_sym_read_memory(i64 %462, i64 4, i8 1)
  %464 = load i32, i32* %455, align 4
  %465 = icmp eq i8* null, %463
  br i1 %465, label %469, label %466

466:                                              ; preds = %461
  %467 = call i8* @_sym_build_integer(i64 3, i8 32)
  %468 = call i8* @_sym_build_logical_shift_right(i8* %463, i8* %467)
  br label %469

469:                                              ; preds = %461, %466
  %470 = phi i8* [ null, %461 ], [ %468, %466 ]
  %471 = lshr i32 %464, 3
  %472 = icmp eq i8* null, %428
  %473 = icmp eq i8* null, %470
  %474 = and i1 %472, %473
  br i1 %474, label %487, label %475

475:                                              ; preds = %469
  br i1 %472, label %476, label %479

476:                                              ; preds = %475
  %477 = zext i32 %429 to i64
  %478 = call i8* @_sym_build_integer(i64 %477, i8 32)
  br label %479

479:                                              ; preds = %475, %476
  %480 = phi i8* [ %428, %475 ], [ %478, %476 ]
  br i1 %473, label %481, label %484

481:                                              ; preds = %479
  %482 = zext i32 %471 to i64
  %483 = call i8* @_sym_build_integer(i64 %482, i8 32)
  br label %484

484:                                              ; preds = %479, %481
  %485 = phi i8* [ %470, %479 ], [ %483, %481 ]
  %486 = call i8* @_sym_build_xor(i8* %480, i8* %485)
  br label %487

487:                                              ; preds = %469, %484
  %488 = phi i8* [ null, %469 ], [ %486, %484 ]
  %489 = xor i32 %429, %471
  %490 = ptrtoint i32* %31 to i64
  call void @_sym_write_memory(i64 %490, i64 4, i8* %488, i8 1)
  store i32 %489, i32* %31, align 4
  %491 = ptrtoint i32* %30 to i64
  %492 = call i8* @_sym_read_memory(i64 %491, i64 4, i8 1)
  %493 = load i32, i32* %30, align 4
  %494 = icmp eq i8* null, %492
  br i1 %494, label %498, label %495

495:                                              ; preds = %487
  %496 = call i8* @_sym_build_integer(i64 2, i8 32)
  %497 = call i8* @_sym_build_sub(i8* %492, i8* %496)
  br label %498

498:                                              ; preds = %487, %495
  %499 = phi i8* [ null, %487 ], [ %497, %495 ]
  %500 = sub nsw i32 %493, 2
  %501 = icmp eq i8* null, %499
  br i1 %501, label %504, label %502

502:                                              ; preds = %498
  %503 = call i8* @_sym_build_sext(i8* %499, i8 32)
  br label %504

504:                                              ; preds = %498, %502
  %505 = phi i8* [ null, %498 ], [ %503, %502 ]
  %506 = sext i32 %500 to i64
  %507 = icmp eq i8* null, %505
  br i1 %507, label %514, label %508

508:                                              ; preds = %504
  %509 = call i8* @_sym_build_integer(i64 4, i8 64)
  %510 = ptrtoint [64 x i32]* %28 to i64
  %511 = call i8* @_sym_build_integer(i64 %510, i8 64)
  %512 = call i8* @_sym_build_mul(i8* %505, i8* %509)
  %513 = call i8* @_sym_build_add(i8* %512, i8* %511)
  br label %514

514:                                              ; preds = %504, %508
  %515 = phi i8* [ null, %504 ], [ %513, %508 ]
  %516 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %506
  %517 = ptrtoint i32* %516 to i64
  %518 = icmp eq i8* null, %515
  br i1 %518, label %522, label %519

519:                                              ; preds = %514
  %520 = call i8* @_sym_build_integer(i64 %517, i8 64)
  %521 = call i8* @_sym_build_equal(i8* %515, i8* %520)
  call void @_sym_push_path_constraint(i8* %521, i1 true, i64 16656776, i32 39, i32 11)
  br label %522

522:                                              ; preds = %514, %519
  %523 = ptrtoint i32* %516 to i64
  %524 = call i8* @_sym_read_memory(i64 %523, i64 4, i8 1)
  %525 = load i32, i32* %516, align 4
  call void @_sym_notify_call(i64 16657032)
  call void @_sym_set_parameter_expression(i8 0, i8* %524)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %526 = call i32 @right_rot(i32 %525, i32 17)
  call void @_sym_notify_ret(i64 16657032)
  %527 = call i8* @_sym_get_return_expression()
  %528 = ptrtoint i32* %30 to i64
  %529 = call i8* @_sym_read_memory(i64 %528, i64 4, i8 1)
  %530 = load i32, i32* %30, align 4
  %531 = icmp eq i8* null, %529
  br i1 %531, label %535, label %532

532:                                              ; preds = %522
  %533 = call i8* @_sym_build_integer(i64 2, i8 32)
  %534 = call i8* @_sym_build_sub(i8* %529, i8* %533)
  br label %535

535:                                              ; preds = %522, %532
  %536 = phi i8* [ null, %522 ], [ %534, %532 ]
  %537 = sub nsw i32 %530, 2
  %538 = icmp eq i8* null, %536
  br i1 %538, label %541, label %539

539:                                              ; preds = %535
  %540 = call i8* @_sym_build_sext(i8* %536, i8 32)
  br label %541

541:                                              ; preds = %535, %539
  %542 = phi i8* [ null, %535 ], [ %540, %539 ]
  %543 = sext i32 %537 to i64
  %544 = icmp eq i8* null, %542
  br i1 %544, label %551, label %545

545:                                              ; preds = %541
  %546 = call i8* @_sym_build_integer(i64 4, i8 64)
  %547 = ptrtoint [64 x i32]* %28 to i64
  %548 = call i8* @_sym_build_integer(i64 %547, i8 64)
  %549 = call i8* @_sym_build_mul(i8* %542, i8* %546)
  %550 = call i8* @_sym_build_add(i8* %549, i8* %548)
  br label %551

551:                                              ; preds = %541, %545
  %552 = phi i8* [ null, %541 ], [ %550, %545 ]
  %553 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %543
  %554 = ptrtoint i32* %553 to i64
  %555 = icmp eq i8* null, %552
  br i1 %555, label %559, label %556

556:                                              ; preds = %551
  %557 = call i8* @_sym_build_integer(i64 %554, i8 64)
  %558 = call i8* @_sym_build_equal(i8* %552, i8* %557)
  call void @_sym_push_path_constraint(i8* %558, i1 true, i64 16657384, i32 39, i32 12)
  br label %559

559:                                              ; preds = %551, %556
  %560 = ptrtoint i32* %553 to i64
  %561 = call i8* @_sym_read_memory(i64 %560, i64 4, i8 1)
  %562 = load i32, i32* %553, align 4
  call void @_sym_notify_call(i64 16657688)
  call void @_sym_set_parameter_expression(i8 0, i8* %561)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %563 = call i32 @right_rot(i32 %562, i32 19)
  call void @_sym_notify_ret(i64 16657688)
  %564 = call i8* @_sym_get_return_expression()
  %565 = icmp eq i8* null, %527
  %566 = icmp eq i8* null, %564
  %567 = and i1 %565, %566
  br i1 %567, label %580, label %568

568:                                              ; preds = %559
  br i1 %565, label %569, label %572

569:                                              ; preds = %568
  %570 = zext i32 %526 to i64
  %571 = call i8* @_sym_build_integer(i64 %570, i8 32)
  br label %572

572:                                              ; preds = %568, %569
  %573 = phi i8* [ %527, %568 ], [ %571, %569 ]
  br i1 %566, label %574, label %577

574:                                              ; preds = %572
  %575 = zext i32 %563 to i64
  %576 = call i8* @_sym_build_integer(i64 %575, i8 32)
  br label %577

577:                                              ; preds = %572, %574
  %578 = phi i8* [ %564, %572 ], [ %576, %574 ]
  %579 = call i8* @_sym_build_xor(i8* %573, i8* %578)
  br label %580

580:                                              ; preds = %559, %577
  %581 = phi i8* [ null, %559 ], [ %579, %577 ]
  %582 = xor i32 %526, %563
  %583 = ptrtoint i32* %30 to i64
  %584 = call i8* @_sym_read_memory(i64 %583, i64 4, i8 1)
  %585 = load i32, i32* %30, align 4
  %586 = icmp eq i8* null, %584
  br i1 %586, label %590, label %587

587:                                              ; preds = %580
  %588 = call i8* @_sym_build_integer(i64 2, i8 32)
  %589 = call i8* @_sym_build_sub(i8* %584, i8* %588)
  br label %590

590:                                              ; preds = %580, %587
  %591 = phi i8* [ null, %580 ], [ %589, %587 ]
  %592 = sub nsw i32 %585, 2
  %593 = icmp eq i8* null, %591
  br i1 %593, label %596, label %594

594:                                              ; preds = %590
  %595 = call i8* @_sym_build_sext(i8* %591, i8 32)
  br label %596

596:                                              ; preds = %590, %594
  %597 = phi i8* [ null, %590 ], [ %595, %594 ]
  %598 = sext i32 %592 to i64
  %599 = icmp eq i8* null, %597
  br i1 %599, label %606, label %600

600:                                              ; preds = %596
  %601 = call i8* @_sym_build_integer(i64 4, i8 64)
  %602 = ptrtoint [64 x i32]* %28 to i64
  %603 = call i8* @_sym_build_integer(i64 %602, i8 64)
  %604 = call i8* @_sym_build_mul(i8* %597, i8* %601)
  %605 = call i8* @_sym_build_add(i8* %604, i8* %603)
  br label %606

606:                                              ; preds = %596, %600
  %607 = phi i8* [ null, %596 ], [ %605, %600 ]
  %608 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %598
  %609 = ptrtoint i32* %608 to i64
  %610 = icmp eq i8* null, %607
  br i1 %610, label %614, label %611

611:                                              ; preds = %606
  %612 = call i8* @_sym_build_integer(i64 %609, i8 64)
  %613 = call i8* @_sym_build_equal(i8* %607, i8* %612)
  call void @_sym_push_path_constraint(i8* %613, i1 true, i64 16658040, i32 39, i32 13)
  br label %614

614:                                              ; preds = %606, %611
  %615 = ptrtoint i32* %608 to i64
  %616 = call i8* @_sym_read_memory(i64 %615, i64 4, i8 1)
  %617 = load i32, i32* %608, align 4
  %618 = icmp eq i8* null, %616
  br i1 %618, label %622, label %619

619:                                              ; preds = %614
  %620 = call i8* @_sym_build_integer(i64 10, i8 32)
  %621 = call i8* @_sym_build_logical_shift_right(i8* %616, i8* %620)
  br label %622

622:                                              ; preds = %614, %619
  %623 = phi i8* [ null, %614 ], [ %621, %619 ]
  %624 = lshr i32 %617, 10
  %625 = icmp eq i8* null, %581
  %626 = icmp eq i8* null, %623
  %627 = and i1 %625, %626
  br i1 %627, label %640, label %628

628:                                              ; preds = %622
  br i1 %625, label %629, label %632

629:                                              ; preds = %628
  %630 = zext i32 %582 to i64
  %631 = call i8* @_sym_build_integer(i64 %630, i8 32)
  br label %632

632:                                              ; preds = %628, %629
  %633 = phi i8* [ %581, %628 ], [ %631, %629 ]
  br i1 %626, label %634, label %637

634:                                              ; preds = %632
  %635 = zext i32 %624 to i64
  %636 = call i8* @_sym_build_integer(i64 %635, i8 32)
  br label %637

637:                                              ; preds = %632, %634
  %638 = phi i8* [ %623, %632 ], [ %636, %634 ]
  %639 = call i8* @_sym_build_xor(i8* %633, i8* %638)
  br label %640

640:                                              ; preds = %622, %637
  %641 = phi i8* [ null, %622 ], [ %639, %637 ]
  %642 = xor i32 %582, %624
  %643 = ptrtoint i32* %32 to i64
  call void @_sym_write_memory(i64 %643, i64 4, i8* %641, i8 1)
  store i32 %642, i32* %32, align 4
  %644 = ptrtoint i32* %30 to i64
  %645 = call i8* @_sym_read_memory(i64 %644, i64 4, i8 1)
  %646 = load i32, i32* %30, align 4
  %647 = icmp eq i8* null, %645
  br i1 %647, label %651, label %648

648:                                              ; preds = %640
  %649 = call i8* @_sym_build_integer(i64 16, i8 32)
  %650 = call i8* @_sym_build_sub(i8* %645, i8* %649)
  br label %651

651:                                              ; preds = %640, %648
  %652 = phi i8* [ null, %640 ], [ %650, %648 ]
  %653 = sub nsw i32 %646, 16
  %654 = icmp eq i8* null, %652
  br i1 %654, label %657, label %655

655:                                              ; preds = %651
  %656 = call i8* @_sym_build_sext(i8* %652, i8 32)
  br label %657

657:                                              ; preds = %651, %655
  %658 = phi i8* [ null, %651 ], [ %656, %655 ]
  %659 = sext i32 %653 to i64
  %660 = icmp eq i8* null, %658
  br i1 %660, label %667, label %661

661:                                              ; preds = %657
  %662 = call i8* @_sym_build_integer(i64 4, i8 64)
  %663 = ptrtoint [64 x i32]* %28 to i64
  %664 = call i8* @_sym_build_integer(i64 %663, i8 64)
  %665 = call i8* @_sym_build_mul(i8* %658, i8* %662)
  %666 = call i8* @_sym_build_add(i8* %665, i8* %664)
  br label %667

667:                                              ; preds = %657, %661
  %668 = phi i8* [ null, %657 ], [ %666, %661 ]
  %669 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %659
  %670 = ptrtoint i32* %669 to i64
  %671 = icmp eq i8* null, %668
  br i1 %671, label %675, label %672

672:                                              ; preds = %667
  %673 = call i8* @_sym_build_integer(i64 %670, i8 64)
  %674 = call i8* @_sym_build_equal(i8* %668, i8* %673)
  call void @_sym_push_path_constraint(i8* %674, i1 true, i64 16658664, i32 39, i32 14)
  br label %675

675:                                              ; preds = %667, %672
  %676 = ptrtoint i32* %669 to i64
  %677 = call i8* @_sym_read_memory(i64 %676, i64 4, i8 1)
  %678 = load i32, i32* %669, align 4
  %679 = ptrtoint i32* %31 to i64
  %680 = call i8* @_sym_read_memory(i64 %679, i64 4, i8 1)
  %681 = load i32, i32* %31, align 4
  %682 = icmp eq i8* null, %677
  %683 = icmp eq i8* null, %680
  %684 = and i1 %682, %683
  br i1 %684, label %697, label %685

685:                                              ; preds = %675
  br i1 %682, label %686, label %689

686:                                              ; preds = %685
  %687 = zext i32 %678 to i64
  %688 = call i8* @_sym_build_integer(i64 %687, i8 32)
  br label %689

689:                                              ; preds = %685, %686
  %690 = phi i8* [ %677, %685 ], [ %688, %686 ]
  br i1 %683, label %691, label %694

691:                                              ; preds = %689
  %692 = zext i32 %681 to i64
  %693 = call i8* @_sym_build_integer(i64 %692, i8 32)
  br label %694

694:                                              ; preds = %689, %691
  %695 = phi i8* [ %680, %689 ], [ %693, %691 ]
  %696 = call i8* @_sym_build_add(i8* %690, i8* %695)
  br label %697

697:                                              ; preds = %675, %694
  %698 = phi i8* [ null, %675 ], [ %696, %694 ]
  %699 = add i32 %678, %681
  %700 = ptrtoint i32* %30 to i64
  %701 = call i8* @_sym_read_memory(i64 %700, i64 4, i8 1)
  %702 = load i32, i32* %30, align 4
  %703 = icmp eq i8* null, %701
  br i1 %703, label %707, label %704

704:                                              ; preds = %697
  %705 = call i8* @_sym_build_integer(i64 7, i8 32)
  %706 = call i8* @_sym_build_sub(i8* %701, i8* %705)
  br label %707

707:                                              ; preds = %697, %704
  %708 = phi i8* [ null, %697 ], [ %706, %704 ]
  %709 = sub nsw i32 %702, 7
  %710 = icmp eq i8* null, %708
  br i1 %710, label %713, label %711

711:                                              ; preds = %707
  %712 = call i8* @_sym_build_sext(i8* %708, i8 32)
  br label %713

713:                                              ; preds = %707, %711
  %714 = phi i8* [ null, %707 ], [ %712, %711 ]
  %715 = sext i32 %709 to i64
  %716 = icmp eq i8* null, %714
  br i1 %716, label %723, label %717

717:                                              ; preds = %713
  %718 = call i8* @_sym_build_integer(i64 4, i8 64)
  %719 = ptrtoint [64 x i32]* %28 to i64
  %720 = call i8* @_sym_build_integer(i64 %719, i8 64)
  %721 = call i8* @_sym_build_mul(i8* %714, i8* %718)
  %722 = call i8* @_sym_build_add(i8* %721, i8* %720)
  br label %723

723:                                              ; preds = %713, %717
  %724 = phi i8* [ null, %713 ], [ %722, %717 ]
  %725 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %715
  %726 = ptrtoint i32* %725 to i64
  %727 = icmp eq i8* null, %724
  br i1 %727, label %731, label %728

728:                                              ; preds = %723
  %729 = call i8* @_sym_build_integer(i64 %726, i8 64)
  %730 = call i8* @_sym_build_equal(i8* %724, i8* %729)
  call void @_sym_push_path_constraint(i8* %730, i1 true, i64 16659432, i32 39, i32 15)
  br label %731

731:                                              ; preds = %723, %728
  %732 = ptrtoint i32* %725 to i64
  %733 = call i8* @_sym_read_memory(i64 %732, i64 4, i8 1)
  %734 = load i32, i32* %725, align 4
  %735 = icmp eq i8* null, %698
  %736 = icmp eq i8* null, %733
  %737 = and i1 %735, %736
  br i1 %737, label %750, label %738

738:                                              ; preds = %731
  br i1 %735, label %739, label %742

739:                                              ; preds = %738
  %740 = zext i32 %699 to i64
  %741 = call i8* @_sym_build_integer(i64 %740, i8 32)
  br label %742

742:                                              ; preds = %738, %739
  %743 = phi i8* [ %698, %738 ], [ %741, %739 ]
  br i1 %736, label %744, label %747

744:                                              ; preds = %742
  %745 = zext i32 %734 to i64
  %746 = call i8* @_sym_build_integer(i64 %745, i8 32)
  br label %747

747:                                              ; preds = %742, %744
  %748 = phi i8* [ %733, %742 ], [ %746, %744 ]
  %749 = call i8* @_sym_build_add(i8* %743, i8* %748)
  br label %750

750:                                              ; preds = %731, %747
  %751 = phi i8* [ null, %731 ], [ %749, %747 ]
  %752 = add i32 %699, %734
  %753 = ptrtoint i32* %32 to i64
  %754 = call i8* @_sym_read_memory(i64 %753, i64 4, i8 1)
  %755 = load i32, i32* %32, align 4
  %756 = icmp eq i8* null, %751
  %757 = icmp eq i8* null, %754
  %758 = and i1 %756, %757
  br i1 %758, label %771, label %759

759:                                              ; preds = %750
  br i1 %756, label %760, label %763

760:                                              ; preds = %759
  %761 = zext i32 %752 to i64
  %762 = call i8* @_sym_build_integer(i64 %761, i8 32)
  br label %763

763:                                              ; preds = %759, %760
  %764 = phi i8* [ %751, %759 ], [ %762, %760 ]
  br i1 %757, label %765, label %768

765:                                              ; preds = %763
  %766 = zext i32 %755 to i64
  %767 = call i8* @_sym_build_integer(i64 %766, i8 32)
  br label %768

768:                                              ; preds = %763, %765
  %769 = phi i8* [ %754, %763 ], [ %767, %765 ]
  %770 = call i8* @_sym_build_add(i8* %764, i8* %769)
  br label %771

771:                                              ; preds = %750, %768
  %772 = phi i8* [ null, %750 ], [ %770, %768 ]
  %773 = add i32 %752, %755
  %774 = ptrtoint i32* %30 to i64
  %775 = call i8* @_sym_read_memory(i64 %774, i64 4, i8 1)
  %776 = load i32, i32* %30, align 4
  %777 = icmp eq i8* null, %775
  br i1 %777, label %780, label %778

778:                                              ; preds = %771
  %779 = call i8* @_sym_build_sext(i8* %775, i8 32)
  br label %780

780:                                              ; preds = %771, %778
  %781 = phi i8* [ null, %771 ], [ %779, %778 ]
  %782 = sext i32 %776 to i64
  %783 = icmp eq i8* null, %781
  br i1 %783, label %790, label %784

784:                                              ; preds = %780
  %785 = call i8* @_sym_build_integer(i64 4, i8 64)
  %786 = ptrtoint [64 x i32]* %28 to i64
  %787 = call i8* @_sym_build_integer(i64 %786, i8 64)
  %788 = call i8* @_sym_build_mul(i8* %781, i8* %785)
  %789 = call i8* @_sym_build_add(i8* %788, i8* %787)
  br label %790

790:                                              ; preds = %780, %784
  %791 = phi i8* [ null, %780 ], [ %789, %784 ]
  %792 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %782
  %793 = ptrtoint i32* %792 to i64
  %794 = icmp eq i8* null, %791
  br i1 %794, label %798, label %795

795:                                              ; preds = %790
  %796 = call i8* @_sym_build_integer(i64 %793, i8 64)
  %797 = call i8* @_sym_build_equal(i8* %791, i8* %796)
  call void @_sym_push_path_constraint(i8* %797, i1 true, i64 16660200, i32 39, i32 16)
  br label %798

798:                                              ; preds = %790, %795
  %799 = ptrtoint i32* %792 to i64
  call void @_sym_write_memory(i64 %799, i64 4, i8* %772, i8 1)
  store i32 %773, i32* %792, align 4
  br label %800

800:                                              ; preds = %798
  call void @_sym_notify_basic_block(i64 16651664)
  %801 = ptrtoint i32* %30 to i64
  %802 = call i8* @_sym_read_memory(i64 %801, i64 4, i8 1)
  %803 = load i32, i32* %30, align 4
  %804 = icmp eq i8* null, %802
  br i1 %804, label %808, label %805

805:                                              ; preds = %800
  %806 = call i8* @_sym_build_integer(i64 1, i8 32)
  %807 = call i8* @_sym_build_add(i8* %802, i8* %806)
  br label %808

808:                                              ; preds = %800, %805
  %809 = phi i8* [ null, %800 ], [ %807, %805 ]
  %810 = add nsw i32 %803, 1
  %811 = ptrtoint i32* %30 to i64
  call void @_sym_write_memory(i64 %811, i64 4, i8* %809, i8 1)
  store i32 %810, i32* %30, align 4
  br label %323

812:                                              ; preds = %336
  call void @_sym_notify_basic_block(i64 16651280)
  %813 = ptrtoint i32* %10 to i64
  %814 = call i8* @_sym_read_memory(i64 %813, i64 4, i8 1)
  %815 = load i32, i32* %10, align 4
  %816 = ptrtoint i32* %20 to i64
  call void @_sym_write_memory(i64 %816, i64 4, i8* %814, i8 1)
  store i32 %815, i32* %20, align 4
  %817 = ptrtoint i32* %11 to i64
  %818 = call i8* @_sym_read_memory(i64 %817, i64 4, i8 1)
  %819 = load i32, i32* %11, align 4
  %820 = ptrtoint i32* %21 to i64
  call void @_sym_write_memory(i64 %820, i64 4, i8* %818, i8 1)
  store i32 %819, i32* %21, align 4
  %821 = ptrtoint i32* %12 to i64
  %822 = call i8* @_sym_read_memory(i64 %821, i64 4, i8 1)
  %823 = load i32, i32* %12, align 4
  %824 = ptrtoint i32* %22 to i64
  call void @_sym_write_memory(i64 %824, i64 4, i8* %822, i8 1)
  store i32 %823, i32* %22, align 4
  %825 = ptrtoint i32* %13 to i64
  %826 = call i8* @_sym_read_memory(i64 %825, i64 4, i8 1)
  %827 = load i32, i32* %13, align 4
  %828 = ptrtoint i32* %23 to i64
  call void @_sym_write_memory(i64 %828, i64 4, i8* %826, i8 1)
  store i32 %827, i32* %23, align 4
  %829 = ptrtoint i32* %14 to i64
  %830 = call i8* @_sym_read_memory(i64 %829, i64 4, i8 1)
  %831 = load i32, i32* %14, align 4
  %832 = ptrtoint i32* %24 to i64
  call void @_sym_write_memory(i64 %832, i64 4, i8* %830, i8 1)
  store i32 %831, i32* %24, align 4
  %833 = ptrtoint i32* %15 to i64
  %834 = call i8* @_sym_read_memory(i64 %833, i64 4, i8 1)
  %835 = load i32, i32* %15, align 4
  %836 = ptrtoint i32* %25 to i64
  call void @_sym_write_memory(i64 %836, i64 4, i8* %834, i8 1)
  store i32 %835, i32* %25, align 4
  %837 = ptrtoint i32* %16 to i64
  %838 = call i8* @_sym_read_memory(i64 %837, i64 4, i8 1)
  %839 = load i32, i32* %16, align 4
  %840 = ptrtoint i32* %26 to i64
  call void @_sym_write_memory(i64 %840, i64 4, i8* %838, i8 1)
  store i32 %839, i32* %26, align 4
  %841 = ptrtoint i32* %17 to i64
  %842 = call i8* @_sym_read_memory(i64 %841, i64 4, i8 1)
  %843 = load i32, i32* %17, align 4
  %844 = ptrtoint i32* %27 to i64
  call void @_sym_write_memory(i64 %844, i64 4, i8* %842, i8 1)
  store i32 %843, i32* %27, align 4
  %845 = ptrtoint i32* %30 to i64
  call void @_sym_write_memory(i64 %845, i64 4, i8* null, i8 1)
  store i32 0, i32* %30, align 4
  br label %846

846:                                              ; preds = %1392, %812
  call void @_sym_notify_basic_block(i64 16662864)
  %847 = ptrtoint i32* %30 to i64
  %848 = call i8* @_sym_read_memory(i64 %847, i64 4, i8 1)
  %849 = load i32, i32* %30, align 4
  %850 = icmp eq i8* null, %848
  br i1 %850, label %854, label %851

851:                                              ; preds = %846
  %852 = call i8* @_sym_build_integer(i64 64, i8 32)
  %853 = call i8* @_sym_build_signed_less_than(i8* %848, i8* %852)
  br label %854

854:                                              ; preds = %846, %851
  %855 = phi i8* [ null, %846 ], [ %853, %851 ]
  %856 = icmp slt i32 %849, 64
  %857 = icmp eq i8* null, %855
  br i1 %857, label %859, label %858

858:                                              ; preds = %854
  call void @_sym_push_path_constraint(i8* %855, i1 %856, i64 16654408, i32 39, i32 17)
  br label %859

859:                                              ; preds = %854, %858
  br i1 %856, label %860, label %1396

860:                                              ; preds = %859
  call void @_sym_notify_basic_block(i64 16663120)
  %861 = ptrtoint i32* %24 to i64
  %862 = call i8* @_sym_read_memory(i64 %861, i64 4, i8 1)
  %863 = load i32, i32* %24, align 4
  call void @_sym_notify_call(i64 16663720)
  call void @_sym_set_parameter_expression(i8 0, i8* %862)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %864 = call i32 @right_rot(i32 %863, i32 6)
  call void @_sym_notify_ret(i64 16663720)
  %865 = call i8* @_sym_get_return_expression()
  %866 = ptrtoint i32* %24 to i64
  %867 = call i8* @_sym_read_memory(i64 %866, i64 4, i8 1)
  %868 = load i32, i32* %24, align 4
  call void @_sym_notify_call(i64 16664024)
  call void @_sym_set_parameter_expression(i8 0, i8* %867)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %869 = call i32 @right_rot(i32 %868, i32 11)
  call void @_sym_notify_ret(i64 16664024)
  %870 = call i8* @_sym_get_return_expression()
  %871 = icmp eq i8* null, %865
  %872 = icmp eq i8* null, %870
  %873 = and i1 %871, %872
  br i1 %873, label %886, label %874

874:                                              ; preds = %860
  br i1 %871, label %875, label %878

875:                                              ; preds = %874
  %876 = zext i32 %864 to i64
  %877 = call i8* @_sym_build_integer(i64 %876, i8 32)
  br label %878

878:                                              ; preds = %874, %875
  %879 = phi i8* [ %865, %874 ], [ %877, %875 ]
  br i1 %872, label %880, label %883

880:                                              ; preds = %878
  %881 = zext i32 %869 to i64
  %882 = call i8* @_sym_build_integer(i64 %881, i8 32)
  br label %883

883:                                              ; preds = %878, %880
  %884 = phi i8* [ %870, %878 ], [ %882, %880 ]
  %885 = call i8* @_sym_build_xor(i8* %879, i8* %884)
  br label %886

886:                                              ; preds = %860, %883
  %887 = phi i8* [ null, %860 ], [ %885, %883 ]
  %888 = xor i32 %864, %869
  %889 = ptrtoint i32* %24 to i64
  %890 = call i8* @_sym_read_memory(i64 %889, i64 4, i8 1)
  %891 = load i32, i32* %24, align 4
  call void @_sym_notify_call(i64 16664440)
  call void @_sym_set_parameter_expression(i8 0, i8* %890)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %892 = call i32 @right_rot(i32 %891, i32 25)
  call void @_sym_notify_ret(i64 16664440)
  %893 = call i8* @_sym_get_return_expression()
  %894 = icmp eq i8* null, %887
  %895 = icmp eq i8* null, %893
  %896 = and i1 %894, %895
  br i1 %896, label %909, label %897

897:                                              ; preds = %886
  br i1 %894, label %898, label %901

898:                                              ; preds = %897
  %899 = zext i32 %888 to i64
  %900 = call i8* @_sym_build_integer(i64 %899, i8 32)
  br label %901

901:                                              ; preds = %897, %898
  %902 = phi i8* [ %887, %897 ], [ %900, %898 ]
  br i1 %895, label %903, label %906

903:                                              ; preds = %901
  %904 = zext i32 %892 to i64
  %905 = call i8* @_sym_build_integer(i64 %904, i8 32)
  br label %906

906:                                              ; preds = %901, %903
  %907 = phi i8* [ %893, %901 ], [ %905, %903 ]
  %908 = call i8* @_sym_build_xor(i8* %902, i8* %907)
  br label %909

909:                                              ; preds = %886, %906
  %910 = phi i8* [ null, %886 ], [ %908, %906 ]
  %911 = xor i32 %888, %892
  %912 = ptrtoint i32* %33 to i64
  call void @_sym_write_memory(i64 %912, i64 4, i8* %910, i8 1)
  store i32 %911, i32* %33, align 4
  %913 = ptrtoint i32* %24 to i64
  %914 = call i8* @_sym_read_memory(i64 %913, i64 4, i8 1)
  %915 = load i32, i32* %24, align 4
  %916 = ptrtoint i32* %25 to i64
  %917 = call i8* @_sym_read_memory(i64 %916, i64 4, i8 1)
  %918 = load i32, i32* %25, align 4
  %919 = icmp eq i8* null, %914
  %920 = icmp eq i8* null, %917
  %921 = and i1 %919, %920
  br i1 %921, label %934, label %922

922:                                              ; preds = %909
  br i1 %919, label %923, label %926

923:                                              ; preds = %922
  %924 = zext i32 %915 to i64
  %925 = call i8* @_sym_build_integer(i64 %924, i8 32)
  br label %926

926:                                              ; preds = %922, %923
  %927 = phi i8* [ %914, %922 ], [ %925, %923 ]
  br i1 %920, label %928, label %931

928:                                              ; preds = %926
  %929 = zext i32 %918 to i64
  %930 = call i8* @_sym_build_integer(i64 %929, i8 32)
  br label %931

931:                                              ; preds = %926, %928
  %932 = phi i8* [ %917, %926 ], [ %930, %928 ]
  %933 = call i8* @_sym_build_and(i8* %927, i8* %932)
  br label %934

934:                                              ; preds = %909, %931
  %935 = phi i8* [ null, %909 ], [ %933, %931 ]
  %936 = and i32 %915, %918
  %937 = ptrtoint i32* %24 to i64
  %938 = call i8* @_sym_read_memory(i64 %937, i64 4, i8 1)
  %939 = load i32, i32* %24, align 4
  %940 = icmp eq i8* null, %938
  br i1 %940, label %944, label %941

941:                                              ; preds = %934
  %942 = call i8* @_sym_build_integer(i64 4294967295, i8 32)
  %943 = call i8* @_sym_build_xor(i8* %938, i8* %942)
  br label %944

944:                                              ; preds = %934, %941
  %945 = phi i8* [ null, %934 ], [ %943, %941 ]
  %946 = xor i32 %939, -1
  %947 = ptrtoint i32* %26 to i64
  %948 = call i8* @_sym_read_memory(i64 %947, i64 4, i8 1)
  %949 = load i32, i32* %26, align 4
  %950 = icmp eq i8* null, %945
  %951 = icmp eq i8* null, %948
  %952 = and i1 %950, %951
  br i1 %952, label %965, label %953

953:                                              ; preds = %944
  br i1 %950, label %954, label %957

954:                                              ; preds = %953
  %955 = zext i32 %946 to i64
  %956 = call i8* @_sym_build_integer(i64 %955, i8 32)
  br label %957

957:                                              ; preds = %953, %954
  %958 = phi i8* [ %945, %953 ], [ %956, %954 ]
  br i1 %951, label %959, label %962

959:                                              ; preds = %957
  %960 = zext i32 %949 to i64
  %961 = call i8* @_sym_build_integer(i64 %960, i8 32)
  br label %962

962:                                              ; preds = %957, %959
  %963 = phi i8* [ %948, %957 ], [ %961, %959 ]
  %964 = call i8* @_sym_build_and(i8* %958, i8* %963)
  br label %965

965:                                              ; preds = %944, %962
  %966 = phi i8* [ null, %944 ], [ %964, %962 ]
  %967 = and i32 %946, %949
  %968 = icmp eq i8* null, %935
  %969 = icmp eq i8* null, %966
  %970 = and i1 %968, %969
  br i1 %970, label %983, label %971

971:                                              ; preds = %965
  br i1 %968, label %972, label %975

972:                                              ; preds = %971
  %973 = zext i32 %936 to i64
  %974 = call i8* @_sym_build_integer(i64 %973, i8 32)
  br label %975

975:                                              ; preds = %971, %972
  %976 = phi i8* [ %935, %971 ], [ %974, %972 ]
  br i1 %969, label %977, label %980

977:                                              ; preds = %975
  %978 = zext i32 %967 to i64
  %979 = call i8* @_sym_build_integer(i64 %978, i8 32)
  br label %980

980:                                              ; preds = %975, %977
  %981 = phi i8* [ %966, %975 ], [ %979, %977 ]
  %982 = call i8* @_sym_build_xor(i8* %976, i8* %981)
  br label %983

983:                                              ; preds = %965, %980
  %984 = phi i8* [ null, %965 ], [ %982, %980 ]
  %985 = xor i32 %936, %967
  %986 = ptrtoint i32* %34 to i64
  call void @_sym_write_memory(i64 %986, i64 4, i8* %984, i8 1)
  store i32 %985, i32* %34, align 4
  %987 = ptrtoint i32* %27 to i64
  %988 = call i8* @_sym_read_memory(i64 %987, i64 4, i8 1)
  %989 = load i32, i32* %27, align 4
  %990 = ptrtoint i32* %33 to i64
  %991 = call i8* @_sym_read_memory(i64 %990, i64 4, i8 1)
  %992 = load i32, i32* %33, align 4
  %993 = icmp eq i8* null, %988
  %994 = icmp eq i8* null, %991
  %995 = and i1 %993, %994
  br i1 %995, label %1008, label %996

996:                                              ; preds = %983
  br i1 %993, label %997, label %1000

997:                                              ; preds = %996
  %998 = zext i32 %989 to i64
  %999 = call i8* @_sym_build_integer(i64 %998, i8 32)
  br label %1000

1000:                                             ; preds = %996, %997
  %1001 = phi i8* [ %988, %996 ], [ %999, %997 ]
  br i1 %994, label %1002, label %1005

1002:                                             ; preds = %1000
  %1003 = zext i32 %992 to i64
  %1004 = call i8* @_sym_build_integer(i64 %1003, i8 32)
  br label %1005

1005:                                             ; preds = %1000, %1002
  %1006 = phi i8* [ %991, %1000 ], [ %1004, %1002 ]
  %1007 = call i8* @_sym_build_add(i8* %1001, i8* %1006)
  br label %1008

1008:                                             ; preds = %983, %1005
  %1009 = phi i8* [ null, %983 ], [ %1007, %1005 ]
  %1010 = add i32 %989, %992
  %1011 = ptrtoint i32* %34 to i64
  %1012 = call i8* @_sym_read_memory(i64 %1011, i64 4, i8 1)
  %1013 = load i32, i32* %34, align 4
  %1014 = icmp eq i8* null, %1009
  %1015 = icmp eq i8* null, %1012
  %1016 = and i1 %1014, %1015
  br i1 %1016, label %1029, label %1017

1017:                                             ; preds = %1008
  br i1 %1014, label %1018, label %1021

1018:                                             ; preds = %1017
  %1019 = zext i32 %1010 to i64
  %1020 = call i8* @_sym_build_integer(i64 %1019, i8 32)
  br label %1021

1021:                                             ; preds = %1017, %1018
  %1022 = phi i8* [ %1009, %1017 ], [ %1020, %1018 ]
  br i1 %1015, label %1023, label %1026

1023:                                             ; preds = %1021
  %1024 = zext i32 %1013 to i64
  %1025 = call i8* @_sym_build_integer(i64 %1024, i8 32)
  br label %1026

1026:                                             ; preds = %1021, %1023
  %1027 = phi i8* [ %1012, %1021 ], [ %1025, %1023 ]
  %1028 = call i8* @_sym_build_add(i8* %1022, i8* %1027)
  br label %1029

1029:                                             ; preds = %1008, %1026
  %1030 = phi i8* [ null, %1008 ], [ %1028, %1026 ]
  %1031 = add i32 %1010, %1013
  %1032 = ptrtoint i32* %30 to i64
  %1033 = call i8* @_sym_read_memory(i64 %1032, i64 4, i8 1)
  %1034 = load i32, i32* %30, align 4
  %1035 = icmp eq i8* null, %1033
  br i1 %1035, label %1038, label %1036

1036:                                             ; preds = %1029
  %1037 = call i8* @_sym_build_sext(i8* %1033, i8 32)
  br label %1038

1038:                                             ; preds = %1029, %1036
  %1039 = phi i8* [ null, %1029 ], [ %1037, %1036 ]
  %1040 = sext i32 %1034 to i64
  %1041 = icmp eq i8* null, %1039
  br i1 %1041, label %1047, label %1042

1042:                                             ; preds = %1038
  %1043 = call i8* @_sym_build_integer(i64 4, i8 64)
  %1044 = call i8* @_sym_build_integer(i64 ptrtoint ([64 x i32]* @k to i64), i8 64)
  %1045 = call i8* @_sym_build_mul(i8* %1039, i8* %1043)
  %1046 = call i8* @_sym_build_add(i8* %1045, i8* %1044)
  br label %1047

1047:                                             ; preds = %1038, %1042
  %1048 = phi i8* [ null, %1038 ], [ %1046, %1042 ]
  %1049 = getelementptr inbounds [64 x i32], [64 x i32]* @k, i64 0, i64 %1040
  %1050 = ptrtoint i32* %1049 to i64
  %1051 = icmp eq i8* null, %1048
  br i1 %1051, label %1055, label %1052

1052:                                             ; preds = %1047
  %1053 = call i8* @_sym_build_integer(i64 %1050, i8 64)
  %1054 = call i8* @_sym_build_equal(i8* %1048, i8* %1053)
  call void @_sym_push_path_constraint(i8* %1054, i1 true, i64 16666872, i32 39, i32 18)
  br label %1055

1055:                                             ; preds = %1047, %1052
  %1056 = ptrtoint i32* %1049 to i64
  %1057 = call i8* @_sym_read_memory(i64 %1056, i64 4, i8 1)
  %1058 = load i32, i32* %1049, align 4
  %1059 = icmp eq i8* null, %1030
  %1060 = icmp eq i8* null, %1057
  %1061 = and i1 %1059, %1060
  br i1 %1061, label %1074, label %1062

1062:                                             ; preds = %1055
  br i1 %1059, label %1063, label %1066

1063:                                             ; preds = %1062
  %1064 = zext i32 %1031 to i64
  %1065 = call i8* @_sym_build_integer(i64 %1064, i8 32)
  br label %1066

1066:                                             ; preds = %1062, %1063
  %1067 = phi i8* [ %1030, %1062 ], [ %1065, %1063 ]
  br i1 %1060, label %1068, label %1071

1068:                                             ; preds = %1066
  %1069 = zext i32 %1058 to i64
  %1070 = call i8* @_sym_build_integer(i64 %1069, i8 32)
  br label %1071

1071:                                             ; preds = %1066, %1068
  %1072 = phi i8* [ %1057, %1066 ], [ %1070, %1068 ]
  %1073 = call i8* @_sym_build_add(i8* %1067, i8* %1072)
  br label %1074

1074:                                             ; preds = %1055, %1071
  %1075 = phi i8* [ null, %1055 ], [ %1073, %1071 ]
  %1076 = add i32 %1031, %1058
  %1077 = ptrtoint i32* %30 to i64
  %1078 = call i8* @_sym_read_memory(i64 %1077, i64 4, i8 1)
  %1079 = load i32, i32* %30, align 4
  %1080 = icmp eq i8* null, %1078
  br i1 %1080, label %1083, label %1081

1081:                                             ; preds = %1074
  %1082 = call i8* @_sym_build_sext(i8* %1078, i8 32)
  br label %1083

1083:                                             ; preds = %1074, %1081
  %1084 = phi i8* [ null, %1074 ], [ %1082, %1081 ]
  %1085 = sext i32 %1079 to i64
  %1086 = icmp eq i8* null, %1084
  br i1 %1086, label %1093, label %1087

1087:                                             ; preds = %1083
  %1088 = call i8* @_sym_build_integer(i64 4, i8 64)
  %1089 = ptrtoint [64 x i32]* %28 to i64
  %1090 = call i8* @_sym_build_integer(i64 %1089, i8 64)
  %1091 = call i8* @_sym_build_mul(i8* %1084, i8* %1088)
  %1092 = call i8* @_sym_build_add(i8* %1091, i8* %1090)
  br label %1093

1093:                                             ; preds = %1083, %1087
  %1094 = phi i8* [ null, %1083 ], [ %1092, %1087 ]
  %1095 = getelementptr inbounds [64 x i32], [64 x i32]* %28, i64 0, i64 %1085
  %1096 = ptrtoint i32* %1095 to i64
  %1097 = icmp eq i8* null, %1094
  br i1 %1097, label %1101, label %1098

1098:                                             ; preds = %1093
  %1099 = call i8* @_sym_build_integer(i64 %1096, i8 64)
  %1100 = call i8* @_sym_build_equal(i8* %1094, i8* %1099)
  call void @_sym_push_path_constraint(i8* %1100, i1 true, i64 16667432, i32 39, i32 19)
  br label %1101

1101:                                             ; preds = %1093, %1098
  %1102 = ptrtoint i32* %1095 to i64
  %1103 = call i8* @_sym_read_memory(i64 %1102, i64 4, i8 1)
  %1104 = load i32, i32* %1095, align 4
  %1105 = icmp eq i8* null, %1075
  %1106 = icmp eq i8* null, %1103
  %1107 = and i1 %1105, %1106
  br i1 %1107, label %1120, label %1108

1108:                                             ; preds = %1101
  br i1 %1105, label %1109, label %1112

1109:                                             ; preds = %1108
  %1110 = zext i32 %1076 to i64
  %1111 = call i8* @_sym_build_integer(i64 %1110, i8 32)
  br label %1112

1112:                                             ; preds = %1108, %1109
  %1113 = phi i8* [ %1075, %1108 ], [ %1111, %1109 ]
  br i1 %1106, label %1114, label %1117

1114:                                             ; preds = %1112
  %1115 = zext i32 %1104 to i64
  %1116 = call i8* @_sym_build_integer(i64 %1115, i8 32)
  br label %1117

1117:                                             ; preds = %1112, %1114
  %1118 = phi i8* [ %1103, %1112 ], [ %1116, %1114 ]
  %1119 = call i8* @_sym_build_add(i8* %1113, i8* %1118)
  br label %1120

1120:                                             ; preds = %1101, %1117
  %1121 = phi i8* [ null, %1101 ], [ %1119, %1117 ]
  %1122 = add i32 %1076, %1104
  %1123 = ptrtoint i32* %35 to i64
  call void @_sym_write_memory(i64 %1123, i64 4, i8* %1121, i8 1)
  store i32 %1122, i32* %35, align 4
  %1124 = ptrtoint i32* %20 to i64
  %1125 = call i8* @_sym_read_memory(i64 %1124, i64 4, i8 1)
  %1126 = load i32, i32* %20, align 4
  call void @_sym_notify_call(i64 16668120)
  call void @_sym_set_parameter_expression(i8 0, i8* %1125)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %1127 = call i32 @right_rot(i32 %1126, i32 2)
  call void @_sym_notify_ret(i64 16668120)
  %1128 = call i8* @_sym_get_return_expression()
  %1129 = ptrtoint i32* %20 to i64
  %1130 = call i8* @_sym_read_memory(i64 %1129, i64 4, i8 1)
  %1131 = load i32, i32* %20, align 4
  call void @_sym_notify_call(i64 16668424)
  call void @_sym_set_parameter_expression(i8 0, i8* %1130)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %1132 = call i32 @right_rot(i32 %1131, i32 13)
  call void @_sym_notify_ret(i64 16668424)
  %1133 = call i8* @_sym_get_return_expression()
  %1134 = icmp eq i8* null, %1128
  %1135 = icmp eq i8* null, %1133
  %1136 = and i1 %1134, %1135
  br i1 %1136, label %1149, label %1137

1137:                                             ; preds = %1120
  br i1 %1134, label %1138, label %1141

1138:                                             ; preds = %1137
  %1139 = zext i32 %1127 to i64
  %1140 = call i8* @_sym_build_integer(i64 %1139, i8 32)
  br label %1141

1141:                                             ; preds = %1137, %1138
  %1142 = phi i8* [ %1128, %1137 ], [ %1140, %1138 ]
  br i1 %1135, label %1143, label %1146

1143:                                             ; preds = %1141
  %1144 = zext i32 %1132 to i64
  %1145 = call i8* @_sym_build_integer(i64 %1144, i8 32)
  br label %1146

1146:                                             ; preds = %1141, %1143
  %1147 = phi i8* [ %1133, %1141 ], [ %1145, %1143 ]
  %1148 = call i8* @_sym_build_xor(i8* %1142, i8* %1147)
  br label %1149

1149:                                             ; preds = %1120, %1146
  %1150 = phi i8* [ null, %1120 ], [ %1148, %1146 ]
  %1151 = xor i32 %1127, %1132
  %1152 = ptrtoint i32* %20 to i64
  %1153 = call i8* @_sym_read_memory(i64 %1152, i64 4, i8 1)
  %1154 = load i32, i32* %20, align 4
  call void @_sym_notify_call(i64 16668840)
  call void @_sym_set_parameter_expression(i8 0, i8* %1153)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %1155 = call i32 @right_rot(i32 %1154, i32 22)
  call void @_sym_notify_ret(i64 16668840)
  %1156 = call i8* @_sym_get_return_expression()
  %1157 = icmp eq i8* null, %1150
  %1158 = icmp eq i8* null, %1156
  %1159 = and i1 %1157, %1158
  br i1 %1159, label %1172, label %1160

1160:                                             ; preds = %1149
  br i1 %1157, label %1161, label %1164

1161:                                             ; preds = %1160
  %1162 = zext i32 %1151 to i64
  %1163 = call i8* @_sym_build_integer(i64 %1162, i8 32)
  br label %1164

1164:                                             ; preds = %1160, %1161
  %1165 = phi i8* [ %1150, %1160 ], [ %1163, %1161 ]
  br i1 %1158, label %1166, label %1169

1166:                                             ; preds = %1164
  %1167 = zext i32 %1155 to i64
  %1168 = call i8* @_sym_build_integer(i64 %1167, i8 32)
  br label %1169

1169:                                             ; preds = %1164, %1166
  %1170 = phi i8* [ %1156, %1164 ], [ %1168, %1166 ]
  %1171 = call i8* @_sym_build_xor(i8* %1165, i8* %1170)
  br label %1172

1172:                                             ; preds = %1149, %1169
  %1173 = phi i8* [ null, %1149 ], [ %1171, %1169 ]
  %1174 = xor i32 %1151, %1155
  %1175 = ptrtoint i32* %36 to i64
  call void @_sym_write_memory(i64 %1175, i64 4, i8* %1173, i8 1)
  store i32 %1174, i32* %36, align 4
  %1176 = ptrtoint i32* %20 to i64
  %1177 = call i8* @_sym_read_memory(i64 %1176, i64 4, i8 1)
  %1178 = load i32, i32* %20, align 4
  %1179 = ptrtoint i32* %21 to i64
  %1180 = call i8* @_sym_read_memory(i64 %1179, i64 4, i8 1)
  %1181 = load i32, i32* %21, align 4
  %1182 = icmp eq i8* null, %1177
  %1183 = icmp eq i8* null, %1180
  %1184 = and i1 %1182, %1183
  br i1 %1184, label %1197, label %1185

1185:                                             ; preds = %1172
  br i1 %1182, label %1186, label %1189

1186:                                             ; preds = %1185
  %1187 = zext i32 %1178 to i64
  %1188 = call i8* @_sym_build_integer(i64 %1187, i8 32)
  br label %1189

1189:                                             ; preds = %1185, %1186
  %1190 = phi i8* [ %1177, %1185 ], [ %1188, %1186 ]
  br i1 %1183, label %1191, label %1194

1191:                                             ; preds = %1189
  %1192 = zext i32 %1181 to i64
  %1193 = call i8* @_sym_build_integer(i64 %1192, i8 32)
  br label %1194

1194:                                             ; preds = %1189, %1191
  %1195 = phi i8* [ %1180, %1189 ], [ %1193, %1191 ]
  %1196 = call i8* @_sym_build_and(i8* %1190, i8* %1195)
  br label %1197

1197:                                             ; preds = %1172, %1194
  %1198 = phi i8* [ null, %1172 ], [ %1196, %1194 ]
  %1199 = and i32 %1178, %1181
  %1200 = ptrtoint i32* %20 to i64
  %1201 = call i8* @_sym_read_memory(i64 %1200, i64 4, i8 1)
  %1202 = load i32, i32* %20, align 4
  %1203 = ptrtoint i32* %22 to i64
  %1204 = call i8* @_sym_read_memory(i64 %1203, i64 4, i8 1)
  %1205 = load i32, i32* %22, align 4
  %1206 = icmp eq i8* null, %1201
  %1207 = icmp eq i8* null, %1204
  %1208 = and i1 %1206, %1207
  br i1 %1208, label %1221, label %1209

1209:                                             ; preds = %1197
  br i1 %1206, label %1210, label %1213

1210:                                             ; preds = %1209
  %1211 = zext i32 %1202 to i64
  %1212 = call i8* @_sym_build_integer(i64 %1211, i8 32)
  br label %1213

1213:                                             ; preds = %1209, %1210
  %1214 = phi i8* [ %1201, %1209 ], [ %1212, %1210 ]
  br i1 %1207, label %1215, label %1218

1215:                                             ; preds = %1213
  %1216 = zext i32 %1205 to i64
  %1217 = call i8* @_sym_build_integer(i64 %1216, i8 32)
  br label %1218

1218:                                             ; preds = %1213, %1215
  %1219 = phi i8* [ %1204, %1213 ], [ %1217, %1215 ]
  %1220 = call i8* @_sym_build_and(i8* %1214, i8* %1219)
  br label %1221

1221:                                             ; preds = %1197, %1218
  %1222 = phi i8* [ null, %1197 ], [ %1220, %1218 ]
  %1223 = and i32 %1202, %1205
  %1224 = icmp eq i8* null, %1198
  %1225 = icmp eq i8* null, %1222
  %1226 = and i1 %1224, %1225
  br i1 %1226, label %1239, label %1227

1227:                                             ; preds = %1221
  br i1 %1224, label %1228, label %1231

1228:                                             ; preds = %1227
  %1229 = zext i32 %1199 to i64
  %1230 = call i8* @_sym_build_integer(i64 %1229, i8 32)
  br label %1231

1231:                                             ; preds = %1227, %1228
  %1232 = phi i8* [ %1198, %1227 ], [ %1230, %1228 ]
  br i1 %1225, label %1233, label %1236

1233:                                             ; preds = %1231
  %1234 = zext i32 %1223 to i64
  %1235 = call i8* @_sym_build_integer(i64 %1234, i8 32)
  br label %1236

1236:                                             ; preds = %1231, %1233
  %1237 = phi i8* [ %1222, %1231 ], [ %1235, %1233 ]
  %1238 = call i8* @_sym_build_xor(i8* %1232, i8* %1237)
  br label %1239

1239:                                             ; preds = %1221, %1236
  %1240 = phi i8* [ null, %1221 ], [ %1238, %1236 ]
  %1241 = xor i32 %1199, %1223
  %1242 = ptrtoint i32* %21 to i64
  %1243 = call i8* @_sym_read_memory(i64 %1242, i64 4, i8 1)
  %1244 = load i32, i32* %21, align 4
  %1245 = ptrtoint i32* %22 to i64
  %1246 = call i8* @_sym_read_memory(i64 %1245, i64 4, i8 1)
  %1247 = load i32, i32* %22, align 4
  %1248 = icmp eq i8* null, %1243
  %1249 = icmp eq i8* null, %1246
  %1250 = and i1 %1248, %1249
  br i1 %1250, label %1263, label %1251

1251:                                             ; preds = %1239
  br i1 %1248, label %1252, label %1255

1252:                                             ; preds = %1251
  %1253 = zext i32 %1244 to i64
  %1254 = call i8* @_sym_build_integer(i64 %1253, i8 32)
  br label %1255

1255:                                             ; preds = %1251, %1252
  %1256 = phi i8* [ %1243, %1251 ], [ %1254, %1252 ]
  br i1 %1249, label %1257, label %1260

1257:                                             ; preds = %1255
  %1258 = zext i32 %1247 to i64
  %1259 = call i8* @_sym_build_integer(i64 %1258, i8 32)
  br label %1260

1260:                                             ; preds = %1255, %1257
  %1261 = phi i8* [ %1246, %1255 ], [ %1259, %1257 ]
  %1262 = call i8* @_sym_build_and(i8* %1256, i8* %1261)
  br label %1263

1263:                                             ; preds = %1239, %1260
  %1264 = phi i8* [ null, %1239 ], [ %1262, %1260 ]
  %1265 = and i32 %1244, %1247
  %1266 = icmp eq i8* null, %1240
  %1267 = icmp eq i8* null, %1264
  %1268 = and i1 %1266, %1267
  br i1 %1268, label %1281, label %1269

1269:                                             ; preds = %1263
  br i1 %1266, label %1270, label %1273

1270:                                             ; preds = %1269
  %1271 = zext i32 %1241 to i64
  %1272 = call i8* @_sym_build_integer(i64 %1271, i8 32)
  br label %1273

1273:                                             ; preds = %1269, %1270
  %1274 = phi i8* [ %1240, %1269 ], [ %1272, %1270 ]
  br i1 %1267, label %1275, label %1278

1275:                                             ; preds = %1273
  %1276 = zext i32 %1265 to i64
  %1277 = call i8* @_sym_build_integer(i64 %1276, i8 32)
  br label %1278

1278:                                             ; preds = %1273, %1275
  %1279 = phi i8* [ %1264, %1273 ], [ %1277, %1275 ]
  %1280 = call i8* @_sym_build_xor(i8* %1274, i8* %1279)
  br label %1281

1281:                                             ; preds = %1263, %1278
  %1282 = phi i8* [ null, %1263 ], [ %1280, %1278 ]
  %1283 = xor i32 %1241, %1265
  %1284 = ptrtoint i32* %37 to i64
  call void @_sym_write_memory(i64 %1284, i64 4, i8* %1282, i8 1)
  store i32 %1283, i32* %37, align 4
  %1285 = ptrtoint i32* %36 to i64
  %1286 = call i8* @_sym_read_memory(i64 %1285, i64 4, i8 1)
  %1287 = load i32, i32* %36, align 4
  %1288 = ptrtoint i32* %37 to i64
  %1289 = call i8* @_sym_read_memory(i64 %1288, i64 4, i8 1)
  %1290 = load i32, i32* %37, align 4
  %1291 = icmp eq i8* null, %1286
  %1292 = icmp eq i8* null, %1289
  %1293 = and i1 %1291, %1292
  br i1 %1293, label %1306, label %1294

1294:                                             ; preds = %1281
  br i1 %1291, label %1295, label %1298

1295:                                             ; preds = %1294
  %1296 = zext i32 %1287 to i64
  %1297 = call i8* @_sym_build_integer(i64 %1296, i8 32)
  br label %1298

1298:                                             ; preds = %1294, %1295
  %1299 = phi i8* [ %1286, %1294 ], [ %1297, %1295 ]
  br i1 %1292, label %1300, label %1303

1300:                                             ; preds = %1298
  %1301 = zext i32 %1290 to i64
  %1302 = call i8* @_sym_build_integer(i64 %1301, i8 32)
  br label %1303

1303:                                             ; preds = %1298, %1300
  %1304 = phi i8* [ %1289, %1298 ], [ %1302, %1300 ]
  %1305 = call i8* @_sym_build_add(i8* %1299, i8* %1304)
  br label %1306

1306:                                             ; preds = %1281, %1303
  %1307 = phi i8* [ null, %1281 ], [ %1305, %1303 ]
  %1308 = add i32 %1287, %1290
  %1309 = ptrtoint i32* %38 to i64
  call void @_sym_write_memory(i64 %1309, i64 4, i8* %1307, i8 1)
  store i32 %1308, i32* %38, align 4
  %1310 = ptrtoint i32* %26 to i64
  %1311 = call i8* @_sym_read_memory(i64 %1310, i64 4, i8 1)
  %1312 = load i32, i32* %26, align 4
  %1313 = ptrtoint i32* %27 to i64
  call void @_sym_write_memory(i64 %1313, i64 4, i8* %1311, i8 1)
  store i32 %1312, i32* %27, align 4
  %1314 = ptrtoint i32* %25 to i64
  %1315 = call i8* @_sym_read_memory(i64 %1314, i64 4, i8 1)
  %1316 = load i32, i32* %25, align 4
  %1317 = ptrtoint i32* %26 to i64
  call void @_sym_write_memory(i64 %1317, i64 4, i8* %1315, i8 1)
  store i32 %1316, i32* %26, align 4
  %1318 = ptrtoint i32* %24 to i64
  %1319 = call i8* @_sym_read_memory(i64 %1318, i64 4, i8 1)
  %1320 = load i32, i32* %24, align 4
  %1321 = ptrtoint i32* %25 to i64
  call void @_sym_write_memory(i64 %1321, i64 4, i8* %1319, i8 1)
  store i32 %1320, i32* %25, align 4
  %1322 = ptrtoint i32* %23 to i64
  %1323 = call i8* @_sym_read_memory(i64 %1322, i64 4, i8 1)
  %1324 = load i32, i32* %23, align 4
  %1325 = ptrtoint i32* %35 to i64
  %1326 = call i8* @_sym_read_memory(i64 %1325, i64 4, i8 1)
  %1327 = load i32, i32* %35, align 4
  %1328 = icmp eq i8* null, %1323
  %1329 = icmp eq i8* null, %1326
  %1330 = and i1 %1328, %1329
  br i1 %1330, label %1343, label %1331

1331:                                             ; preds = %1306
  br i1 %1328, label %1332, label %1335

1332:                                             ; preds = %1331
  %1333 = zext i32 %1324 to i64
  %1334 = call i8* @_sym_build_integer(i64 %1333, i8 32)
  br label %1335

1335:                                             ; preds = %1331, %1332
  %1336 = phi i8* [ %1323, %1331 ], [ %1334, %1332 ]
  br i1 %1329, label %1337, label %1340

1337:                                             ; preds = %1335
  %1338 = zext i32 %1327 to i64
  %1339 = call i8* @_sym_build_integer(i64 %1338, i8 32)
  br label %1340

1340:                                             ; preds = %1335, %1337
  %1341 = phi i8* [ %1326, %1335 ], [ %1339, %1337 ]
  %1342 = call i8* @_sym_build_add(i8* %1336, i8* %1341)
  br label %1343

1343:                                             ; preds = %1306, %1340
  %1344 = phi i8* [ null, %1306 ], [ %1342, %1340 ]
  %1345 = add i32 %1324, %1327
  %1346 = ptrtoint i32* %24 to i64
  call void @_sym_write_memory(i64 %1346, i64 4, i8* %1344, i8 1)
  store i32 %1345, i32* %24, align 4
  %1347 = ptrtoint i32* %22 to i64
  %1348 = call i8* @_sym_read_memory(i64 %1347, i64 4, i8 1)
  %1349 = load i32, i32* %22, align 4
  %1350 = ptrtoint i32* %23 to i64
  call void @_sym_write_memory(i64 %1350, i64 4, i8* %1348, i8 1)
  store i32 %1349, i32* %23, align 4
  %1351 = ptrtoint i32* %21 to i64
  %1352 = call i8* @_sym_read_memory(i64 %1351, i64 4, i8 1)
  %1353 = load i32, i32* %21, align 4
  %1354 = ptrtoint i32* %22 to i64
  call void @_sym_write_memory(i64 %1354, i64 4, i8* %1352, i8 1)
  store i32 %1353, i32* %22, align 4
  %1355 = ptrtoint i32* %20 to i64
  %1356 = call i8* @_sym_read_memory(i64 %1355, i64 4, i8 1)
  %1357 = load i32, i32* %20, align 4
  %1358 = ptrtoint i32* %21 to i64
  call void @_sym_write_memory(i64 %1358, i64 4, i8* %1356, i8 1)
  store i32 %1357, i32* %21, align 4
  %1359 = ptrtoint i32* %35 to i64
  %1360 = call i8* @_sym_read_memory(i64 %1359, i64 4, i8 1)
  %1361 = load i32, i32* %35, align 4
  %1362 = ptrtoint i32* %38 to i64
  %1363 = call i8* @_sym_read_memory(i64 %1362, i64 4, i8 1)
  %1364 = load i32, i32* %38, align 4
  %1365 = icmp eq i8* null, %1360
  %1366 = icmp eq i8* null, %1363
  %1367 = and i1 %1365, %1366
  br i1 %1367, label %1380, label %1368

1368:                                             ; preds = %1343
  br i1 %1365, label %1369, label %1372

1369:                                             ; preds = %1368
  %1370 = zext i32 %1361 to i64
  %1371 = call i8* @_sym_build_integer(i64 %1370, i8 32)
  br label %1372

1372:                                             ; preds = %1368, %1369
  %1373 = phi i8* [ %1360, %1368 ], [ %1371, %1369 ]
  br i1 %1366, label %1374, label %1377

1374:                                             ; preds = %1372
  %1375 = zext i32 %1364 to i64
  %1376 = call i8* @_sym_build_integer(i64 %1375, i8 32)
  br label %1377

1377:                                             ; preds = %1372, %1374
  %1378 = phi i8* [ %1363, %1372 ], [ %1376, %1374 ]
  %1379 = call i8* @_sym_build_add(i8* %1373, i8* %1378)
  br label %1380

1380:                                             ; preds = %1343, %1377
  %1381 = phi i8* [ null, %1343 ], [ %1379, %1377 ]
  %1382 = add i32 %1361, %1364
  %1383 = ptrtoint i32* %20 to i64
  call void @_sym_write_memory(i64 %1383, i64 4, i8* %1381, i8 1)
  store i32 %1382, i32* %20, align 4
  br label %1384

1384:                                             ; preds = %1380
  call void @_sym_notify_basic_block(i64 16663040)
  %1385 = ptrtoint i32* %30 to i64
  %1386 = call i8* @_sym_read_memory(i64 %1385, i64 4, i8 1)
  %1387 = load i32, i32* %30, align 4
  %1388 = icmp eq i8* null, %1386
  br i1 %1388, label %1392, label %1389

1389:                                             ; preds = %1384
  %1390 = call i8* @_sym_build_integer(i64 1, i8 32)
  %1391 = call i8* @_sym_build_add(i8* %1386, i8* %1390)
  br label %1392

1392:                                             ; preds = %1384, %1389
  %1393 = phi i8* [ null, %1384 ], [ %1391, %1389 ]
  %1394 = add nsw i32 %1387, 1
  %1395 = ptrtoint i32* %30 to i64
  call void @_sym_write_memory(i64 %1395, i64 4, i8* %1393, i8 1)
  store i32 %1394, i32* %30, align 4
  br label %846

1396:                                             ; preds = %859
  call void @_sym_notify_basic_block(i64 16386304)
  %1397 = ptrtoint i32* %10 to i64
  %1398 = call i8* @_sym_read_memory(i64 %1397, i64 4, i8 1)
  %1399 = load i32, i32* %10, align 4
  %1400 = ptrtoint i32* %20 to i64
  %1401 = call i8* @_sym_read_memory(i64 %1400, i64 4, i8 1)
  %1402 = load i32, i32* %20, align 4
  %1403 = icmp eq i8* null, %1398
  %1404 = icmp eq i8* null, %1401
  %1405 = and i1 %1403, %1404
  br i1 %1405, label %1418, label %1406

1406:                                             ; preds = %1396
  br i1 %1403, label %1407, label %1410

1407:                                             ; preds = %1406
  %1408 = zext i32 %1399 to i64
  %1409 = call i8* @_sym_build_integer(i64 %1408, i8 32)
  br label %1410

1410:                                             ; preds = %1406, %1407
  %1411 = phi i8* [ %1398, %1406 ], [ %1409, %1407 ]
  br i1 %1404, label %1412, label %1415

1412:                                             ; preds = %1410
  %1413 = zext i32 %1402 to i64
  %1414 = call i8* @_sym_build_integer(i64 %1413, i8 32)
  br label %1415

1415:                                             ; preds = %1410, %1412
  %1416 = phi i8* [ %1401, %1410 ], [ %1414, %1412 ]
  %1417 = call i8* @_sym_build_add(i8* %1411, i8* %1416)
  br label %1418

1418:                                             ; preds = %1396, %1415
  %1419 = phi i8* [ null, %1396 ], [ %1417, %1415 ]
  %1420 = add i32 %1399, %1402
  %1421 = ptrtoint i32* %10 to i64
  call void @_sym_write_memory(i64 %1421, i64 4, i8* %1419, i8 1)
  store i32 %1420, i32* %10, align 4
  %1422 = ptrtoint i32* %11 to i64
  %1423 = call i8* @_sym_read_memory(i64 %1422, i64 4, i8 1)
  %1424 = load i32, i32* %11, align 4
  %1425 = ptrtoint i32* %21 to i64
  %1426 = call i8* @_sym_read_memory(i64 %1425, i64 4, i8 1)
  %1427 = load i32, i32* %21, align 4
  %1428 = icmp eq i8* null, %1423
  %1429 = icmp eq i8* null, %1426
  %1430 = and i1 %1428, %1429
  br i1 %1430, label %1443, label %1431

1431:                                             ; preds = %1418
  br i1 %1428, label %1432, label %1435

1432:                                             ; preds = %1431
  %1433 = zext i32 %1424 to i64
  %1434 = call i8* @_sym_build_integer(i64 %1433, i8 32)
  br label %1435

1435:                                             ; preds = %1431, %1432
  %1436 = phi i8* [ %1423, %1431 ], [ %1434, %1432 ]
  br i1 %1429, label %1437, label %1440

1437:                                             ; preds = %1435
  %1438 = zext i32 %1427 to i64
  %1439 = call i8* @_sym_build_integer(i64 %1438, i8 32)
  br label %1440

1440:                                             ; preds = %1435, %1437
  %1441 = phi i8* [ %1426, %1435 ], [ %1439, %1437 ]
  %1442 = call i8* @_sym_build_add(i8* %1436, i8* %1441)
  br label %1443

1443:                                             ; preds = %1418, %1440
  %1444 = phi i8* [ null, %1418 ], [ %1442, %1440 ]
  %1445 = add i32 %1424, %1427
  %1446 = ptrtoint i32* %11 to i64
  call void @_sym_write_memory(i64 %1446, i64 4, i8* %1444, i8 1)
  store i32 %1445, i32* %11, align 4
  %1447 = ptrtoint i32* %12 to i64
  %1448 = call i8* @_sym_read_memory(i64 %1447, i64 4, i8 1)
  %1449 = load i32, i32* %12, align 4
  %1450 = ptrtoint i32* %22 to i64
  %1451 = call i8* @_sym_read_memory(i64 %1450, i64 4, i8 1)
  %1452 = load i32, i32* %22, align 4
  %1453 = icmp eq i8* null, %1448
  %1454 = icmp eq i8* null, %1451
  %1455 = and i1 %1453, %1454
  br i1 %1455, label %1468, label %1456

1456:                                             ; preds = %1443
  br i1 %1453, label %1457, label %1460

1457:                                             ; preds = %1456
  %1458 = zext i32 %1449 to i64
  %1459 = call i8* @_sym_build_integer(i64 %1458, i8 32)
  br label %1460

1460:                                             ; preds = %1456, %1457
  %1461 = phi i8* [ %1448, %1456 ], [ %1459, %1457 ]
  br i1 %1454, label %1462, label %1465

1462:                                             ; preds = %1460
  %1463 = zext i32 %1452 to i64
  %1464 = call i8* @_sym_build_integer(i64 %1463, i8 32)
  br label %1465

1465:                                             ; preds = %1460, %1462
  %1466 = phi i8* [ %1451, %1460 ], [ %1464, %1462 ]
  %1467 = call i8* @_sym_build_add(i8* %1461, i8* %1466)
  br label %1468

1468:                                             ; preds = %1443, %1465
  %1469 = phi i8* [ null, %1443 ], [ %1467, %1465 ]
  %1470 = add i32 %1449, %1452
  %1471 = ptrtoint i32* %12 to i64
  call void @_sym_write_memory(i64 %1471, i64 4, i8* %1469, i8 1)
  store i32 %1470, i32* %12, align 4
  %1472 = ptrtoint i32* %13 to i64
  %1473 = call i8* @_sym_read_memory(i64 %1472, i64 4, i8 1)
  %1474 = load i32, i32* %13, align 4
  %1475 = ptrtoint i32* %23 to i64
  %1476 = call i8* @_sym_read_memory(i64 %1475, i64 4, i8 1)
  %1477 = load i32, i32* %23, align 4
  %1478 = icmp eq i8* null, %1473
  %1479 = icmp eq i8* null, %1476
  %1480 = and i1 %1478, %1479
  br i1 %1480, label %1493, label %1481

1481:                                             ; preds = %1468
  br i1 %1478, label %1482, label %1485

1482:                                             ; preds = %1481
  %1483 = zext i32 %1474 to i64
  %1484 = call i8* @_sym_build_integer(i64 %1483, i8 32)
  br label %1485

1485:                                             ; preds = %1481, %1482
  %1486 = phi i8* [ %1473, %1481 ], [ %1484, %1482 ]
  br i1 %1479, label %1487, label %1490

1487:                                             ; preds = %1485
  %1488 = zext i32 %1477 to i64
  %1489 = call i8* @_sym_build_integer(i64 %1488, i8 32)
  br label %1490

1490:                                             ; preds = %1485, %1487
  %1491 = phi i8* [ %1476, %1485 ], [ %1489, %1487 ]
  %1492 = call i8* @_sym_build_add(i8* %1486, i8* %1491)
  br label %1493

1493:                                             ; preds = %1468, %1490
  %1494 = phi i8* [ null, %1468 ], [ %1492, %1490 ]
  %1495 = add i32 %1474, %1477
  %1496 = ptrtoint i32* %13 to i64
  call void @_sym_write_memory(i64 %1496, i64 4, i8* %1494, i8 1)
  store i32 %1495, i32* %13, align 4
  %1497 = ptrtoint i32* %14 to i64
  %1498 = call i8* @_sym_read_memory(i64 %1497, i64 4, i8 1)
  %1499 = load i32, i32* %14, align 4
  %1500 = ptrtoint i32* %24 to i64
  %1501 = call i8* @_sym_read_memory(i64 %1500, i64 4, i8 1)
  %1502 = load i32, i32* %24, align 4
  %1503 = icmp eq i8* null, %1498
  %1504 = icmp eq i8* null, %1501
  %1505 = and i1 %1503, %1504
  br i1 %1505, label %1518, label %1506

1506:                                             ; preds = %1493
  br i1 %1503, label %1507, label %1510

1507:                                             ; preds = %1506
  %1508 = zext i32 %1499 to i64
  %1509 = call i8* @_sym_build_integer(i64 %1508, i8 32)
  br label %1510

1510:                                             ; preds = %1506, %1507
  %1511 = phi i8* [ %1498, %1506 ], [ %1509, %1507 ]
  br i1 %1504, label %1512, label %1515

1512:                                             ; preds = %1510
  %1513 = zext i32 %1502 to i64
  %1514 = call i8* @_sym_build_integer(i64 %1513, i8 32)
  br label %1515

1515:                                             ; preds = %1510, %1512
  %1516 = phi i8* [ %1501, %1510 ], [ %1514, %1512 ]
  %1517 = call i8* @_sym_build_add(i8* %1511, i8* %1516)
  br label %1518

1518:                                             ; preds = %1493, %1515
  %1519 = phi i8* [ null, %1493 ], [ %1517, %1515 ]
  %1520 = add i32 %1499, %1502
  %1521 = ptrtoint i32* %14 to i64
  call void @_sym_write_memory(i64 %1521, i64 4, i8* %1519, i8 1)
  store i32 %1520, i32* %14, align 4
  %1522 = ptrtoint i32* %15 to i64
  %1523 = call i8* @_sym_read_memory(i64 %1522, i64 4, i8 1)
  %1524 = load i32, i32* %15, align 4
  %1525 = ptrtoint i32* %25 to i64
  %1526 = call i8* @_sym_read_memory(i64 %1525, i64 4, i8 1)
  %1527 = load i32, i32* %25, align 4
  %1528 = icmp eq i8* null, %1523
  %1529 = icmp eq i8* null, %1526
  %1530 = and i1 %1528, %1529
  br i1 %1530, label %1543, label %1531

1531:                                             ; preds = %1518
  br i1 %1528, label %1532, label %1535

1532:                                             ; preds = %1531
  %1533 = zext i32 %1524 to i64
  %1534 = call i8* @_sym_build_integer(i64 %1533, i8 32)
  br label %1535

1535:                                             ; preds = %1531, %1532
  %1536 = phi i8* [ %1523, %1531 ], [ %1534, %1532 ]
  br i1 %1529, label %1537, label %1540

1537:                                             ; preds = %1535
  %1538 = zext i32 %1527 to i64
  %1539 = call i8* @_sym_build_integer(i64 %1538, i8 32)
  br label %1540

1540:                                             ; preds = %1535, %1537
  %1541 = phi i8* [ %1526, %1535 ], [ %1539, %1537 ]
  %1542 = call i8* @_sym_build_add(i8* %1536, i8* %1541)
  br label %1543

1543:                                             ; preds = %1518, %1540
  %1544 = phi i8* [ null, %1518 ], [ %1542, %1540 ]
  %1545 = add i32 %1524, %1527
  %1546 = ptrtoint i32* %15 to i64
  call void @_sym_write_memory(i64 %1546, i64 4, i8* %1544, i8 1)
  store i32 %1545, i32* %15, align 4
  %1547 = ptrtoint i32* %16 to i64
  %1548 = call i8* @_sym_read_memory(i64 %1547, i64 4, i8 1)
  %1549 = load i32, i32* %16, align 4
  %1550 = ptrtoint i32* %26 to i64
  %1551 = call i8* @_sym_read_memory(i64 %1550, i64 4, i8 1)
  %1552 = load i32, i32* %26, align 4
  %1553 = icmp eq i8* null, %1548
  %1554 = icmp eq i8* null, %1551
  %1555 = and i1 %1553, %1554
  br i1 %1555, label %1568, label %1556

1556:                                             ; preds = %1543
  br i1 %1553, label %1557, label %1560

1557:                                             ; preds = %1556
  %1558 = zext i32 %1549 to i64
  %1559 = call i8* @_sym_build_integer(i64 %1558, i8 32)
  br label %1560

1560:                                             ; preds = %1556, %1557
  %1561 = phi i8* [ %1548, %1556 ], [ %1559, %1557 ]
  br i1 %1554, label %1562, label %1565

1562:                                             ; preds = %1560
  %1563 = zext i32 %1552 to i64
  %1564 = call i8* @_sym_build_integer(i64 %1563, i8 32)
  br label %1565

1565:                                             ; preds = %1560, %1562
  %1566 = phi i8* [ %1551, %1560 ], [ %1564, %1562 ]
  %1567 = call i8* @_sym_build_add(i8* %1561, i8* %1566)
  br label %1568

1568:                                             ; preds = %1543, %1565
  %1569 = phi i8* [ null, %1543 ], [ %1567, %1565 ]
  %1570 = add i32 %1549, %1552
  %1571 = ptrtoint i32* %16 to i64
  call void @_sym_write_memory(i64 %1571, i64 4, i8* %1569, i8 1)
  store i32 %1570, i32* %16, align 4
  %1572 = ptrtoint i32* %17 to i64
  %1573 = call i8* @_sym_read_memory(i64 %1572, i64 4, i8 1)
  %1574 = load i32, i32* %17, align 4
  %1575 = ptrtoint i32* %27 to i64
  %1576 = call i8* @_sym_read_memory(i64 %1575, i64 4, i8 1)
  %1577 = load i32, i32* %27, align 4
  %1578 = icmp eq i8* null, %1573
  %1579 = icmp eq i8* null, %1576
  %1580 = and i1 %1578, %1579
  br i1 %1580, label %1593, label %1581

1581:                                             ; preds = %1568
  br i1 %1578, label %1582, label %1585

1582:                                             ; preds = %1581
  %1583 = zext i32 %1574 to i64
  %1584 = call i8* @_sym_build_integer(i64 %1583, i8 32)
  br label %1585

1585:                                             ; preds = %1581, %1582
  %1586 = phi i8* [ %1573, %1581 ], [ %1584, %1582 ]
  br i1 %1579, label %1587, label %1590

1587:                                             ; preds = %1585
  %1588 = zext i32 %1577 to i64
  %1589 = call i8* @_sym_build_integer(i64 %1588, i8 32)
  br label %1590

1590:                                             ; preds = %1585, %1587
  %1591 = phi i8* [ %1576, %1585 ], [ %1589, %1587 ]
  %1592 = call i8* @_sym_build_add(i8* %1586, i8* %1591)
  br label %1593

1593:                                             ; preds = %1568, %1590
  %1594 = phi i8* [ null, %1568 ], [ %1592, %1590 ]
  %1595 = add i32 %1574, %1577
  %1596 = ptrtoint i32* %17 to i64
  call void @_sym_write_memory(i64 %1596, i64 4, i8* %1594, i8 1)
  store i32 %1595, i32* %17, align 4
  br label %56

1597:                                             ; preds = %69
  call void @_sym_notify_basic_block(i64 16638960)
  %1598 = ptrtoint i32* %10 to i64
  %1599 = call i8* @_sym_read_memory(i64 %1598, i64 4, i8 1)
  %1600 = load i32, i32* %10, align 4
  %1601 = icmp eq i8* null, %1599
  br i1 %1601, label %1605, label %1602

1602:                                             ; preds = %1597
  %1603 = call i8* @_sym_build_integer(i64 24, i8 32)
  %1604 = call i8* @_sym_build_logical_shift_right(i8* %1599, i8* %1603)
  br label %1605

1605:                                             ; preds = %1597, %1602
  %1606 = phi i8* [ null, %1597 ], [ %1604, %1602 ]
  %1607 = lshr i32 %1600, 24
  %1608 = icmp eq i8* null, %1606
  br i1 %1608, label %1611, label %1609

1609:                                             ; preds = %1605
  %1610 = call i8* @_sym_build_trunc(i8* %1606, i8 8)
  br label %1611

1611:                                             ; preds = %1605, %1609
  %1612 = phi i8* [ null, %1605 ], [ %1610, %1609 ]
  %1613 = trunc i32 %1607 to i8
  %1614 = ptrtoint i8** %7 to i64
  %1615 = call i8* @_sym_read_memory(i64 %1614, i64 8, i8 1)
  %1616 = load i8*, i8** %7, align 8
  %1617 = getelementptr inbounds i8, i8* %1616, i64 0
  %1618 = ptrtoint i8* %1617 to i64
  %1619 = icmp eq i8* null, %1615
  br i1 %1619, label %1623, label %1620

1620:                                             ; preds = %1611
  %1621 = call i8* @_sym_build_integer(i64 %1618, i8 64)
  %1622 = call i8* @_sym_build_equal(i8* %1615, i8* %1621)
  call void @_sym_push_path_constraint(i8* %1622, i1 true, i64 16677568, i32 39, i32 20)
  br label %1623

1623:                                             ; preds = %1611, %1620
  %1624 = ptrtoint i8* %1617 to i64
  call void @_sym_write_memory(i64 %1624, i64 1, i8* %1612, i8 1)
  store i8 %1613, i8* %1617, align 1
  %1625 = ptrtoint i32* %10 to i64
  %1626 = call i8* @_sym_read_memory(i64 %1625, i64 4, i8 1)
  %1627 = load i32, i32* %10, align 4
  %1628 = icmp eq i8* null, %1626
  br i1 %1628, label %1632, label %1629

1629:                                             ; preds = %1623
  %1630 = call i8* @_sym_build_integer(i64 16, i8 32)
  %1631 = call i8* @_sym_build_logical_shift_right(i8* %1626, i8* %1630)
  br label %1632

1632:                                             ; preds = %1623, %1629
  %1633 = phi i8* [ null, %1623 ], [ %1631, %1629 ]
  %1634 = lshr i32 %1627, 16
  %1635 = icmp eq i8* null, %1633
  br i1 %1635, label %1638, label %1636

1636:                                             ; preds = %1632
  %1637 = call i8* @_sym_build_trunc(i8* %1633, i8 8)
  br label %1638

1638:                                             ; preds = %1632, %1636
  %1639 = phi i8* [ null, %1632 ], [ %1637, %1636 ]
  %1640 = trunc i32 %1634 to i8
  %1641 = ptrtoint i8** %7 to i64
  %1642 = call i8* @_sym_read_memory(i64 %1641, i64 8, i8 1)
  %1643 = load i8*, i8** %7, align 8
  %1644 = icmp eq i8* null, %1642
  %1645 = and i1 true, %1644
  br i1 %1645, label %1651, label %1646

1646:                                             ; preds = %1638
  %1647 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1648 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1649 = call i8* @_sym_build_mul(i8* %1647, i8* %1648)
  %1650 = call i8* @_sym_build_add(i8* %1649, i8* %1642)
  br label %1651

1651:                                             ; preds = %1638, %1646
  %1652 = phi i8* [ null, %1638 ], [ %1650, %1646 ]
  %1653 = getelementptr inbounds i8, i8* %1643, i64 1
  %1654 = ptrtoint i8* %1653 to i64
  %1655 = icmp eq i8* null, %1652
  br i1 %1655, label %1659, label %1656

1656:                                             ; preds = %1651
  %1657 = call i8* @_sym_build_integer(i64 %1654, i8 64)
  %1658 = call i8* @_sym_build_equal(i8* %1652, i8* %1657)
  call void @_sym_push_path_constraint(i8* %1658, i1 true, i64 16678224, i32 39, i32 21)
  br label %1659

1659:                                             ; preds = %1651, %1656
  %1660 = ptrtoint i8* %1653 to i64
  call void @_sym_write_memory(i64 %1660, i64 1, i8* %1639, i8 1)
  store i8 %1640, i8* %1653, align 1
  %1661 = ptrtoint i32* %10 to i64
  %1662 = call i8* @_sym_read_memory(i64 %1661, i64 4, i8 1)
  %1663 = load i32, i32* %10, align 4
  %1664 = icmp eq i8* null, %1662
  br i1 %1664, label %1668, label %1665

1665:                                             ; preds = %1659
  %1666 = call i8* @_sym_build_integer(i64 8, i8 32)
  %1667 = call i8* @_sym_build_logical_shift_right(i8* %1662, i8* %1666)
  br label %1668

1668:                                             ; preds = %1659, %1665
  %1669 = phi i8* [ null, %1659 ], [ %1667, %1665 ]
  %1670 = lshr i32 %1663, 8
  %1671 = icmp eq i8* null, %1669
  br i1 %1671, label %1674, label %1672

1672:                                             ; preds = %1668
  %1673 = call i8* @_sym_build_trunc(i8* %1669, i8 8)
  br label %1674

1674:                                             ; preds = %1668, %1672
  %1675 = phi i8* [ null, %1668 ], [ %1673, %1672 ]
  %1676 = trunc i32 %1670 to i8
  %1677 = ptrtoint i8** %7 to i64
  %1678 = call i8* @_sym_read_memory(i64 %1677, i64 8, i8 1)
  %1679 = load i8*, i8** %7, align 8
  %1680 = icmp eq i8* null, %1678
  %1681 = and i1 true, %1680
  br i1 %1681, label %1687, label %1682

1682:                                             ; preds = %1674
  %1683 = call i8* @_sym_build_integer(i64 2, i8 64)
  %1684 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1685 = call i8* @_sym_build_mul(i8* %1683, i8* %1684)
  %1686 = call i8* @_sym_build_add(i8* %1685, i8* %1678)
  br label %1687

1687:                                             ; preds = %1674, %1682
  %1688 = phi i8* [ null, %1674 ], [ %1686, %1682 ]
  %1689 = getelementptr inbounds i8, i8* %1679, i64 2
  %1690 = ptrtoint i8* %1689 to i64
  %1691 = icmp eq i8* null, %1688
  br i1 %1691, label %1695, label %1692

1692:                                             ; preds = %1687
  %1693 = call i8* @_sym_build_integer(i64 %1690, i8 64)
  %1694 = call i8* @_sym_build_equal(i8* %1688, i8* %1693)
  call void @_sym_push_path_constraint(i8* %1694, i1 true, i64 16678880, i32 39, i32 22)
  br label %1695

1695:                                             ; preds = %1687, %1692
  %1696 = ptrtoint i8* %1689 to i64
  call void @_sym_write_memory(i64 %1696, i64 1, i8* %1675, i8 1)
  store i8 %1676, i8* %1689, align 1
  %1697 = ptrtoint i32* %10 to i64
  %1698 = call i8* @_sym_read_memory(i64 %1697, i64 4, i8 1)
  %1699 = load i32, i32* %10, align 4
  %1700 = icmp eq i8* null, %1698
  br i1 %1700, label %1703, label %1701

1701:                                             ; preds = %1695
  %1702 = call i8* @_sym_build_trunc(i8* %1698, i8 8)
  br label %1703

1703:                                             ; preds = %1695, %1701
  %1704 = phi i8* [ null, %1695 ], [ %1702, %1701 ]
  %1705 = trunc i32 %1699 to i8
  %1706 = ptrtoint i8** %7 to i64
  %1707 = call i8* @_sym_read_memory(i64 %1706, i64 8, i8 1)
  %1708 = load i8*, i8** %7, align 8
  %1709 = icmp eq i8* null, %1707
  %1710 = and i1 true, %1709
  br i1 %1710, label %1716, label %1711

1711:                                             ; preds = %1703
  %1712 = call i8* @_sym_build_integer(i64 3, i8 64)
  %1713 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1714 = call i8* @_sym_build_mul(i8* %1712, i8* %1713)
  %1715 = call i8* @_sym_build_add(i8* %1714, i8* %1707)
  br label %1716

1716:                                             ; preds = %1703, %1711
  %1717 = phi i8* [ null, %1703 ], [ %1715, %1711 ]
  %1718 = getelementptr inbounds i8, i8* %1708, i64 3
  %1719 = ptrtoint i8* %1718 to i64
  %1720 = icmp eq i8* null, %1717
  br i1 %1720, label %1724, label %1721

1721:                                             ; preds = %1716
  %1722 = call i8* @_sym_build_integer(i64 %1719, i8 64)
  %1723 = call i8* @_sym_build_equal(i8* %1717, i8* %1722)
  call void @_sym_push_path_constraint(i8* %1723, i1 true, i64 16679424, i32 39, i32 23)
  br label %1724

1724:                                             ; preds = %1716, %1721
  %1725 = ptrtoint i8* %1718 to i64
  call void @_sym_write_memory(i64 %1725, i64 1, i8* %1704, i8 1)
  store i8 %1705, i8* %1718, align 1
  %1726 = ptrtoint i32* %11 to i64
  %1727 = call i8* @_sym_read_memory(i64 %1726, i64 4, i8 1)
  %1728 = load i32, i32* %11, align 4
  %1729 = icmp eq i8* null, %1727
  br i1 %1729, label %1733, label %1730

1730:                                             ; preds = %1724
  %1731 = call i8* @_sym_build_integer(i64 24, i8 32)
  %1732 = call i8* @_sym_build_logical_shift_right(i8* %1727, i8* %1731)
  br label %1733

1733:                                             ; preds = %1724, %1730
  %1734 = phi i8* [ null, %1724 ], [ %1732, %1730 ]
  %1735 = lshr i32 %1728, 24
  %1736 = icmp eq i8* null, %1734
  br i1 %1736, label %1739, label %1737

1737:                                             ; preds = %1733
  %1738 = call i8* @_sym_build_trunc(i8* %1734, i8 8)
  br label %1739

1739:                                             ; preds = %1733, %1737
  %1740 = phi i8* [ null, %1733 ], [ %1738, %1737 ]
  %1741 = trunc i32 %1735 to i8
  %1742 = ptrtoint i8** %7 to i64
  %1743 = call i8* @_sym_read_memory(i64 %1742, i64 8, i8 1)
  %1744 = load i8*, i8** %7, align 8
  %1745 = icmp eq i8* null, %1743
  %1746 = and i1 true, %1745
  br i1 %1746, label %1752, label %1747

1747:                                             ; preds = %1739
  %1748 = call i8* @_sym_build_integer(i64 4, i8 64)
  %1749 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1750 = call i8* @_sym_build_mul(i8* %1748, i8* %1749)
  %1751 = call i8* @_sym_build_add(i8* %1750, i8* %1743)
  br label %1752

1752:                                             ; preds = %1739, %1747
  %1753 = phi i8* [ null, %1739 ], [ %1751, %1747 ]
  %1754 = getelementptr inbounds i8, i8* %1744, i64 4
  %1755 = ptrtoint i8* %1754 to i64
  %1756 = icmp eq i8* null, %1753
  br i1 %1756, label %1760, label %1757

1757:                                             ; preds = %1752
  %1758 = call i8* @_sym_build_integer(i64 %1755, i8 64)
  %1759 = call i8* @_sym_build_equal(i8* %1753, i8* %1758)
  call void @_sym_push_path_constraint(i8* %1759, i1 true, i64 16680080, i32 39, i32 24)
  br label %1760

1760:                                             ; preds = %1752, %1757
  %1761 = ptrtoint i8* %1754 to i64
  call void @_sym_write_memory(i64 %1761, i64 1, i8* %1740, i8 1)
  store i8 %1741, i8* %1754, align 1
  %1762 = ptrtoint i32* %11 to i64
  %1763 = call i8* @_sym_read_memory(i64 %1762, i64 4, i8 1)
  %1764 = load i32, i32* %11, align 4
  %1765 = icmp eq i8* null, %1763
  br i1 %1765, label %1769, label %1766

1766:                                             ; preds = %1760
  %1767 = call i8* @_sym_build_integer(i64 16, i8 32)
  %1768 = call i8* @_sym_build_logical_shift_right(i8* %1763, i8* %1767)
  br label %1769

1769:                                             ; preds = %1760, %1766
  %1770 = phi i8* [ null, %1760 ], [ %1768, %1766 ]
  %1771 = lshr i32 %1764, 16
  %1772 = icmp eq i8* null, %1770
  br i1 %1772, label %1775, label %1773

1773:                                             ; preds = %1769
  %1774 = call i8* @_sym_build_trunc(i8* %1770, i8 8)
  br label %1775

1775:                                             ; preds = %1769, %1773
  %1776 = phi i8* [ null, %1769 ], [ %1774, %1773 ]
  %1777 = trunc i32 %1771 to i8
  %1778 = ptrtoint i8** %7 to i64
  %1779 = call i8* @_sym_read_memory(i64 %1778, i64 8, i8 1)
  %1780 = load i8*, i8** %7, align 8
  %1781 = icmp eq i8* null, %1779
  %1782 = and i1 true, %1781
  br i1 %1782, label %1788, label %1783

1783:                                             ; preds = %1775
  %1784 = call i8* @_sym_build_integer(i64 5, i8 64)
  %1785 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1786 = call i8* @_sym_build_mul(i8* %1784, i8* %1785)
  %1787 = call i8* @_sym_build_add(i8* %1786, i8* %1779)
  br label %1788

1788:                                             ; preds = %1775, %1783
  %1789 = phi i8* [ null, %1775 ], [ %1787, %1783 ]
  %1790 = getelementptr inbounds i8, i8* %1780, i64 5
  %1791 = ptrtoint i8* %1790 to i64
  %1792 = icmp eq i8* null, %1789
  br i1 %1792, label %1796, label %1793

1793:                                             ; preds = %1788
  %1794 = call i8* @_sym_build_integer(i64 %1791, i8 64)
  %1795 = call i8* @_sym_build_equal(i8* %1789, i8* %1794)
  call void @_sym_push_path_constraint(i8* %1795, i1 true, i64 16680832, i32 39, i32 25)
  br label %1796

1796:                                             ; preds = %1788, %1793
  %1797 = ptrtoint i8* %1790 to i64
  call void @_sym_write_memory(i64 %1797, i64 1, i8* %1776, i8 1)
  store i8 %1777, i8* %1790, align 1
  %1798 = ptrtoint i32* %11 to i64
  %1799 = call i8* @_sym_read_memory(i64 %1798, i64 4, i8 1)
  %1800 = load i32, i32* %11, align 4
  %1801 = icmp eq i8* null, %1799
  br i1 %1801, label %1805, label %1802

1802:                                             ; preds = %1796
  %1803 = call i8* @_sym_build_integer(i64 8, i8 32)
  %1804 = call i8* @_sym_build_logical_shift_right(i8* %1799, i8* %1803)
  br label %1805

1805:                                             ; preds = %1796, %1802
  %1806 = phi i8* [ null, %1796 ], [ %1804, %1802 ]
  %1807 = lshr i32 %1800, 8
  %1808 = icmp eq i8* null, %1806
  br i1 %1808, label %1811, label %1809

1809:                                             ; preds = %1805
  %1810 = call i8* @_sym_build_trunc(i8* %1806, i8 8)
  br label %1811

1811:                                             ; preds = %1805, %1809
  %1812 = phi i8* [ null, %1805 ], [ %1810, %1809 ]
  %1813 = trunc i32 %1807 to i8
  %1814 = ptrtoint i8** %7 to i64
  %1815 = call i8* @_sym_read_memory(i64 %1814, i64 8, i8 1)
  %1816 = load i8*, i8** %7, align 8
  %1817 = icmp eq i8* null, %1815
  %1818 = and i1 true, %1817
  br i1 %1818, label %1824, label %1819

1819:                                             ; preds = %1811
  %1820 = call i8* @_sym_build_integer(i64 6, i8 64)
  %1821 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1822 = call i8* @_sym_build_mul(i8* %1820, i8* %1821)
  %1823 = call i8* @_sym_build_add(i8* %1822, i8* %1815)
  br label %1824

1824:                                             ; preds = %1811, %1819
  %1825 = phi i8* [ null, %1811 ], [ %1823, %1819 ]
  %1826 = getelementptr inbounds i8, i8* %1816, i64 6
  %1827 = ptrtoint i8* %1826 to i64
  %1828 = icmp eq i8* null, %1825
  br i1 %1828, label %1832, label %1829

1829:                                             ; preds = %1824
  %1830 = call i8* @_sym_build_integer(i64 %1827, i8 64)
  %1831 = call i8* @_sym_build_equal(i8* %1825, i8* %1830)
  call void @_sym_push_path_constraint(i8* %1831, i1 true, i64 16681536, i32 39, i32 26)
  br label %1832

1832:                                             ; preds = %1824, %1829
  %1833 = ptrtoint i8* %1826 to i64
  call void @_sym_write_memory(i64 %1833, i64 1, i8* %1812, i8 1)
  store i8 %1813, i8* %1826, align 1
  %1834 = ptrtoint i32* %11 to i64
  %1835 = call i8* @_sym_read_memory(i64 %1834, i64 4, i8 1)
  %1836 = load i32, i32* %11, align 4
  %1837 = icmp eq i8* null, %1835
  br i1 %1837, label %1840, label %1838

1838:                                             ; preds = %1832
  %1839 = call i8* @_sym_build_trunc(i8* %1835, i8 8)
  br label %1840

1840:                                             ; preds = %1832, %1838
  %1841 = phi i8* [ null, %1832 ], [ %1839, %1838 ]
  %1842 = trunc i32 %1836 to i8
  %1843 = ptrtoint i8** %7 to i64
  %1844 = call i8* @_sym_read_memory(i64 %1843, i64 8, i8 1)
  %1845 = load i8*, i8** %7, align 8
  %1846 = icmp eq i8* null, %1844
  %1847 = and i1 true, %1846
  br i1 %1847, label %1853, label %1848

1848:                                             ; preds = %1840
  %1849 = call i8* @_sym_build_integer(i64 7, i8 64)
  %1850 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1851 = call i8* @_sym_build_mul(i8* %1849, i8* %1850)
  %1852 = call i8* @_sym_build_add(i8* %1851, i8* %1844)
  br label %1853

1853:                                             ; preds = %1840, %1848
  %1854 = phi i8* [ null, %1840 ], [ %1852, %1848 ]
  %1855 = getelementptr inbounds i8, i8* %1845, i64 7
  %1856 = ptrtoint i8* %1855 to i64
  %1857 = icmp eq i8* null, %1854
  br i1 %1857, label %1861, label %1858

1858:                                             ; preds = %1853
  %1859 = call i8* @_sym_build_integer(i64 %1856, i8 64)
  %1860 = call i8* @_sym_build_equal(i8* %1854, i8* %1859)
  call void @_sym_push_path_constraint(i8* %1860, i1 true, i64 16682128, i32 39, i32 27)
  br label %1861

1861:                                             ; preds = %1853, %1858
  %1862 = ptrtoint i8* %1855 to i64
  call void @_sym_write_memory(i64 %1862, i64 1, i8* %1841, i8 1)
  store i8 %1842, i8* %1855, align 1
  %1863 = ptrtoint i32* %12 to i64
  %1864 = call i8* @_sym_read_memory(i64 %1863, i64 4, i8 1)
  %1865 = load i32, i32* %12, align 4
  %1866 = icmp eq i8* null, %1864
  br i1 %1866, label %1870, label %1867

1867:                                             ; preds = %1861
  %1868 = call i8* @_sym_build_integer(i64 24, i8 32)
  %1869 = call i8* @_sym_build_logical_shift_right(i8* %1864, i8* %1868)
  br label %1870

1870:                                             ; preds = %1861, %1867
  %1871 = phi i8* [ null, %1861 ], [ %1869, %1867 ]
  %1872 = lshr i32 %1865, 24
  %1873 = icmp eq i8* null, %1871
  br i1 %1873, label %1876, label %1874

1874:                                             ; preds = %1870
  %1875 = call i8* @_sym_build_trunc(i8* %1871, i8 8)
  br label %1876

1876:                                             ; preds = %1870, %1874
  %1877 = phi i8* [ null, %1870 ], [ %1875, %1874 ]
  %1878 = trunc i32 %1872 to i8
  %1879 = ptrtoint i8** %7 to i64
  %1880 = call i8* @_sym_read_memory(i64 %1879, i64 8, i8 1)
  %1881 = load i8*, i8** %7, align 8
  %1882 = icmp eq i8* null, %1880
  %1883 = and i1 true, %1882
  br i1 %1883, label %1889, label %1884

1884:                                             ; preds = %1876
  %1885 = call i8* @_sym_build_integer(i64 8, i8 64)
  %1886 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1887 = call i8* @_sym_build_mul(i8* %1885, i8* %1886)
  %1888 = call i8* @_sym_build_add(i8* %1887, i8* %1880)
  br label %1889

1889:                                             ; preds = %1876, %1884
  %1890 = phi i8* [ null, %1876 ], [ %1888, %1884 ]
  %1891 = getelementptr inbounds i8, i8* %1881, i64 8
  %1892 = ptrtoint i8* %1891 to i64
  %1893 = icmp eq i8* null, %1890
  br i1 %1893, label %1897, label %1894

1894:                                             ; preds = %1889
  %1895 = call i8* @_sym_build_integer(i64 %1892, i8 64)
  %1896 = call i8* @_sym_build_equal(i8* %1890, i8* %1895)
  call void @_sym_push_path_constraint(i8* %1896, i1 true, i64 16682832, i32 39, i32 28)
  br label %1897

1897:                                             ; preds = %1889, %1894
  %1898 = ptrtoint i8* %1891 to i64
  call void @_sym_write_memory(i64 %1898, i64 1, i8* %1877, i8 1)
  store i8 %1878, i8* %1891, align 1
  %1899 = ptrtoint i32* %12 to i64
  %1900 = call i8* @_sym_read_memory(i64 %1899, i64 4, i8 1)
  %1901 = load i32, i32* %12, align 4
  %1902 = icmp eq i8* null, %1900
  br i1 %1902, label %1906, label %1903

1903:                                             ; preds = %1897
  %1904 = call i8* @_sym_build_integer(i64 16, i8 32)
  %1905 = call i8* @_sym_build_logical_shift_right(i8* %1900, i8* %1904)
  br label %1906

1906:                                             ; preds = %1897, %1903
  %1907 = phi i8* [ null, %1897 ], [ %1905, %1903 ]
  %1908 = lshr i32 %1901, 16
  %1909 = icmp eq i8* null, %1907
  br i1 %1909, label %1912, label %1910

1910:                                             ; preds = %1906
  %1911 = call i8* @_sym_build_trunc(i8* %1907, i8 8)
  br label %1912

1912:                                             ; preds = %1906, %1910
  %1913 = phi i8* [ null, %1906 ], [ %1911, %1910 ]
  %1914 = trunc i32 %1908 to i8
  %1915 = ptrtoint i8** %7 to i64
  %1916 = call i8* @_sym_read_memory(i64 %1915, i64 8, i8 1)
  %1917 = load i8*, i8** %7, align 8
  %1918 = icmp eq i8* null, %1916
  %1919 = and i1 true, %1918
  br i1 %1919, label %1925, label %1920

1920:                                             ; preds = %1912
  %1921 = call i8* @_sym_build_integer(i64 9, i8 64)
  %1922 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1923 = call i8* @_sym_build_mul(i8* %1921, i8* %1922)
  %1924 = call i8* @_sym_build_add(i8* %1923, i8* %1916)
  br label %1925

1925:                                             ; preds = %1912, %1920
  %1926 = phi i8* [ null, %1912 ], [ %1924, %1920 ]
  %1927 = getelementptr inbounds i8, i8* %1917, i64 9
  %1928 = ptrtoint i8* %1927 to i64
  %1929 = icmp eq i8* null, %1926
  br i1 %1929, label %1933, label %1930

1930:                                             ; preds = %1925
  %1931 = call i8* @_sym_build_integer(i64 %1928, i8 64)
  %1932 = call i8* @_sym_build_equal(i8* %1926, i8* %1931)
  call void @_sym_push_path_constraint(i8* %1932, i1 true, i64 16683584, i32 39, i32 29)
  br label %1933

1933:                                             ; preds = %1925, %1930
  %1934 = ptrtoint i8* %1927 to i64
  call void @_sym_write_memory(i64 %1934, i64 1, i8* %1913, i8 1)
  store i8 %1914, i8* %1927, align 1
  %1935 = ptrtoint i32* %12 to i64
  %1936 = call i8* @_sym_read_memory(i64 %1935, i64 4, i8 1)
  %1937 = load i32, i32* %12, align 4
  %1938 = icmp eq i8* null, %1936
  br i1 %1938, label %1942, label %1939

1939:                                             ; preds = %1933
  %1940 = call i8* @_sym_build_integer(i64 8, i8 32)
  %1941 = call i8* @_sym_build_logical_shift_right(i8* %1936, i8* %1940)
  br label %1942

1942:                                             ; preds = %1933, %1939
  %1943 = phi i8* [ null, %1933 ], [ %1941, %1939 ]
  %1944 = lshr i32 %1937, 8
  %1945 = icmp eq i8* null, %1943
  br i1 %1945, label %1948, label %1946

1946:                                             ; preds = %1942
  %1947 = call i8* @_sym_build_trunc(i8* %1943, i8 8)
  br label %1948

1948:                                             ; preds = %1942, %1946
  %1949 = phi i8* [ null, %1942 ], [ %1947, %1946 ]
  %1950 = trunc i32 %1944 to i8
  %1951 = ptrtoint i8** %7 to i64
  %1952 = call i8* @_sym_read_memory(i64 %1951, i64 8, i8 1)
  %1953 = load i8*, i8** %7, align 8
  %1954 = icmp eq i8* null, %1952
  %1955 = and i1 true, %1954
  br i1 %1955, label %1961, label %1956

1956:                                             ; preds = %1948
  %1957 = call i8* @_sym_build_integer(i64 10, i8 64)
  %1958 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1959 = call i8* @_sym_build_mul(i8* %1957, i8* %1958)
  %1960 = call i8* @_sym_build_add(i8* %1959, i8* %1952)
  br label %1961

1961:                                             ; preds = %1948, %1956
  %1962 = phi i8* [ null, %1948 ], [ %1960, %1956 ]
  %1963 = getelementptr inbounds i8, i8* %1953, i64 10
  %1964 = ptrtoint i8* %1963 to i64
  %1965 = icmp eq i8* null, %1962
  br i1 %1965, label %1969, label %1966

1966:                                             ; preds = %1961
  %1967 = call i8* @_sym_build_integer(i64 %1964, i8 64)
  %1968 = call i8* @_sym_build_equal(i8* %1962, i8* %1967)
  call void @_sym_push_path_constraint(i8* %1968, i1 true, i64 16684288, i32 39, i32 30)
  br label %1969

1969:                                             ; preds = %1961, %1966
  %1970 = ptrtoint i8* %1963 to i64
  call void @_sym_write_memory(i64 %1970, i64 1, i8* %1949, i8 1)
  store i8 %1950, i8* %1963, align 1
  %1971 = ptrtoint i32* %12 to i64
  %1972 = call i8* @_sym_read_memory(i64 %1971, i64 4, i8 1)
  %1973 = load i32, i32* %12, align 4
  %1974 = icmp eq i8* null, %1972
  br i1 %1974, label %1977, label %1975

1975:                                             ; preds = %1969
  %1976 = call i8* @_sym_build_trunc(i8* %1972, i8 8)
  br label %1977

1977:                                             ; preds = %1969, %1975
  %1978 = phi i8* [ null, %1969 ], [ %1976, %1975 ]
  %1979 = trunc i32 %1973 to i8
  %1980 = ptrtoint i8** %7 to i64
  %1981 = call i8* @_sym_read_memory(i64 %1980, i64 8, i8 1)
  %1982 = load i8*, i8** %7, align 8
  %1983 = icmp eq i8* null, %1981
  %1984 = and i1 true, %1983
  br i1 %1984, label %1990, label %1985

1985:                                             ; preds = %1977
  %1986 = call i8* @_sym_build_integer(i64 11, i8 64)
  %1987 = call i8* @_sym_build_integer(i64 1, i8 64)
  %1988 = call i8* @_sym_build_mul(i8* %1986, i8* %1987)
  %1989 = call i8* @_sym_build_add(i8* %1988, i8* %1981)
  br label %1990

1990:                                             ; preds = %1977, %1985
  %1991 = phi i8* [ null, %1977 ], [ %1989, %1985 ]
  %1992 = getelementptr inbounds i8, i8* %1982, i64 11
  %1993 = ptrtoint i8* %1992 to i64
  %1994 = icmp eq i8* null, %1991
  br i1 %1994, label %1998, label %1995

1995:                                             ; preds = %1990
  %1996 = call i8* @_sym_build_integer(i64 %1993, i8 64)
  %1997 = call i8* @_sym_build_equal(i8* %1991, i8* %1996)
  call void @_sym_push_path_constraint(i8* %1997, i1 true, i64 16684880, i32 39, i32 31)
  br label %1998

1998:                                             ; preds = %1990, %1995
  %1999 = ptrtoint i8* %1992 to i64
  call void @_sym_write_memory(i64 %1999, i64 1, i8* %1978, i8 1)
  store i8 %1979, i8* %1992, align 1
  %2000 = ptrtoint i32* %13 to i64
  %2001 = call i8* @_sym_read_memory(i64 %2000, i64 4, i8 1)
  %2002 = load i32, i32* %13, align 4
  %2003 = icmp eq i8* null, %2001
  br i1 %2003, label %2007, label %2004

2004:                                             ; preds = %1998
  %2005 = call i8* @_sym_build_integer(i64 24, i8 32)
  %2006 = call i8* @_sym_build_logical_shift_right(i8* %2001, i8* %2005)
  br label %2007

2007:                                             ; preds = %1998, %2004
  %2008 = phi i8* [ null, %1998 ], [ %2006, %2004 ]
  %2009 = lshr i32 %2002, 24
  %2010 = icmp eq i8* null, %2008
  br i1 %2010, label %2013, label %2011

2011:                                             ; preds = %2007
  %2012 = call i8* @_sym_build_trunc(i8* %2008, i8 8)
  br label %2013

2013:                                             ; preds = %2007, %2011
  %2014 = phi i8* [ null, %2007 ], [ %2012, %2011 ]
  %2015 = trunc i32 %2009 to i8
  %2016 = ptrtoint i8** %7 to i64
  %2017 = call i8* @_sym_read_memory(i64 %2016, i64 8, i8 1)
  %2018 = load i8*, i8** %7, align 8
  %2019 = icmp eq i8* null, %2017
  %2020 = and i1 true, %2019
  br i1 %2020, label %2026, label %2021

2021:                                             ; preds = %2013
  %2022 = call i8* @_sym_build_integer(i64 12, i8 64)
  %2023 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2024 = call i8* @_sym_build_mul(i8* %2022, i8* %2023)
  %2025 = call i8* @_sym_build_add(i8* %2024, i8* %2017)
  br label %2026

2026:                                             ; preds = %2013, %2021
  %2027 = phi i8* [ null, %2013 ], [ %2025, %2021 ]
  %2028 = getelementptr inbounds i8, i8* %2018, i64 12
  %2029 = ptrtoint i8* %2028 to i64
  %2030 = icmp eq i8* null, %2027
  br i1 %2030, label %2034, label %2031

2031:                                             ; preds = %2026
  %2032 = call i8* @_sym_build_integer(i64 %2029, i8 64)
  %2033 = call i8* @_sym_build_equal(i8* %2027, i8* %2032)
  call void @_sym_push_path_constraint(i8* %2033, i1 true, i64 16629808, i32 39, i32 32)
  br label %2034

2034:                                             ; preds = %2026, %2031
  %2035 = ptrtoint i8* %2028 to i64
  call void @_sym_write_memory(i64 %2035, i64 1, i8* %2014, i8 1)
  store i8 %2015, i8* %2028, align 1
  %2036 = ptrtoint i32* %13 to i64
  %2037 = call i8* @_sym_read_memory(i64 %2036, i64 4, i8 1)
  %2038 = load i32, i32* %13, align 4
  %2039 = icmp eq i8* null, %2037
  br i1 %2039, label %2043, label %2040

2040:                                             ; preds = %2034
  %2041 = call i8* @_sym_build_integer(i64 16, i8 32)
  %2042 = call i8* @_sym_build_logical_shift_right(i8* %2037, i8* %2041)
  br label %2043

2043:                                             ; preds = %2034, %2040
  %2044 = phi i8* [ null, %2034 ], [ %2042, %2040 ]
  %2045 = lshr i32 %2038, 16
  %2046 = icmp eq i8* null, %2044
  br i1 %2046, label %2049, label %2047

2047:                                             ; preds = %2043
  %2048 = call i8* @_sym_build_trunc(i8* %2044, i8 8)
  br label %2049

2049:                                             ; preds = %2043, %2047
  %2050 = phi i8* [ null, %2043 ], [ %2048, %2047 ]
  %2051 = trunc i32 %2045 to i8
  %2052 = ptrtoint i8** %7 to i64
  %2053 = call i8* @_sym_read_memory(i64 %2052, i64 8, i8 1)
  %2054 = load i8*, i8** %7, align 8
  %2055 = icmp eq i8* null, %2053
  %2056 = and i1 true, %2055
  br i1 %2056, label %2062, label %2057

2057:                                             ; preds = %2049
  %2058 = call i8* @_sym_build_integer(i64 13, i8 64)
  %2059 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2060 = call i8* @_sym_build_mul(i8* %2058, i8* %2059)
  %2061 = call i8* @_sym_build_add(i8* %2060, i8* %2053)
  br label %2062

2062:                                             ; preds = %2049, %2057
  %2063 = phi i8* [ null, %2049 ], [ %2061, %2057 ]
  %2064 = getelementptr inbounds i8, i8* %2054, i64 13
  %2065 = ptrtoint i8* %2064 to i64
  %2066 = icmp eq i8* null, %2063
  br i1 %2066, label %2070, label %2067

2067:                                             ; preds = %2062
  %2068 = call i8* @_sym_build_integer(i64 %2065, i8 64)
  %2069 = call i8* @_sym_build_equal(i8* %2063, i8* %2068)
  call void @_sym_push_path_constraint(i8* %2069, i1 true, i64 16630512, i32 39, i32 33)
  br label %2070

2070:                                             ; preds = %2062, %2067
  %2071 = ptrtoint i8* %2064 to i64
  call void @_sym_write_memory(i64 %2071, i64 1, i8* %2050, i8 1)
  store i8 %2051, i8* %2064, align 1
  %2072 = ptrtoint i32* %13 to i64
  %2073 = call i8* @_sym_read_memory(i64 %2072, i64 4, i8 1)
  %2074 = load i32, i32* %13, align 4
  %2075 = icmp eq i8* null, %2073
  br i1 %2075, label %2079, label %2076

2076:                                             ; preds = %2070
  %2077 = call i8* @_sym_build_integer(i64 8, i8 32)
  %2078 = call i8* @_sym_build_logical_shift_right(i8* %2073, i8* %2077)
  br label %2079

2079:                                             ; preds = %2070, %2076
  %2080 = phi i8* [ null, %2070 ], [ %2078, %2076 ]
  %2081 = lshr i32 %2074, 8
  %2082 = icmp eq i8* null, %2080
  br i1 %2082, label %2085, label %2083

2083:                                             ; preds = %2079
  %2084 = call i8* @_sym_build_trunc(i8* %2080, i8 8)
  br label %2085

2085:                                             ; preds = %2079, %2083
  %2086 = phi i8* [ null, %2079 ], [ %2084, %2083 ]
  %2087 = trunc i32 %2081 to i8
  %2088 = ptrtoint i8** %7 to i64
  %2089 = call i8* @_sym_read_memory(i64 %2088, i64 8, i8 1)
  %2090 = load i8*, i8** %7, align 8
  %2091 = icmp eq i8* null, %2089
  %2092 = and i1 true, %2091
  br i1 %2092, label %2098, label %2093

2093:                                             ; preds = %2085
  %2094 = call i8* @_sym_build_integer(i64 14, i8 64)
  %2095 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2096 = call i8* @_sym_build_mul(i8* %2094, i8* %2095)
  %2097 = call i8* @_sym_build_add(i8* %2096, i8* %2089)
  br label %2098

2098:                                             ; preds = %2085, %2093
  %2099 = phi i8* [ null, %2085 ], [ %2097, %2093 ]
  %2100 = getelementptr inbounds i8, i8* %2090, i64 14
  %2101 = ptrtoint i8* %2100 to i64
  %2102 = icmp eq i8* null, %2099
  br i1 %2102, label %2106, label %2103

2103:                                             ; preds = %2098
  %2104 = call i8* @_sym_build_integer(i64 %2101, i8 64)
  %2105 = call i8* @_sym_build_equal(i8* %2099, i8* %2104)
  call void @_sym_push_path_constraint(i8* %2105, i1 true, i64 16688672, i32 39, i32 34)
  br label %2106

2106:                                             ; preds = %2098, %2103
  %2107 = ptrtoint i8* %2100 to i64
  call void @_sym_write_memory(i64 %2107, i64 1, i8* %2086, i8 1)
  store i8 %2087, i8* %2100, align 1
  %2108 = ptrtoint i32* %13 to i64
  %2109 = call i8* @_sym_read_memory(i64 %2108, i64 4, i8 1)
  %2110 = load i32, i32* %13, align 4
  %2111 = icmp eq i8* null, %2109
  br i1 %2111, label %2114, label %2112

2112:                                             ; preds = %2106
  %2113 = call i8* @_sym_build_trunc(i8* %2109, i8 8)
  br label %2114

2114:                                             ; preds = %2106, %2112
  %2115 = phi i8* [ null, %2106 ], [ %2113, %2112 ]
  %2116 = trunc i32 %2110 to i8
  %2117 = ptrtoint i8** %7 to i64
  %2118 = call i8* @_sym_read_memory(i64 %2117, i64 8, i8 1)
  %2119 = load i8*, i8** %7, align 8
  %2120 = icmp eq i8* null, %2118
  %2121 = and i1 true, %2120
  br i1 %2121, label %2127, label %2122

2122:                                             ; preds = %2114
  %2123 = call i8* @_sym_build_integer(i64 15, i8 64)
  %2124 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2125 = call i8* @_sym_build_mul(i8* %2123, i8* %2124)
  %2126 = call i8* @_sym_build_add(i8* %2125, i8* %2118)
  br label %2127

2127:                                             ; preds = %2114, %2122
  %2128 = phi i8* [ null, %2114 ], [ %2126, %2122 ]
  %2129 = getelementptr inbounds i8, i8* %2119, i64 15
  %2130 = ptrtoint i8* %2129 to i64
  %2131 = icmp eq i8* null, %2128
  br i1 %2131, label %2135, label %2132

2132:                                             ; preds = %2127
  %2133 = call i8* @_sym_build_integer(i64 %2130, i8 64)
  %2134 = call i8* @_sym_build_equal(i8* %2128, i8* %2133)
  call void @_sym_push_path_constraint(i8* %2134, i1 true, i64 16689216, i32 39, i32 35)
  br label %2135

2135:                                             ; preds = %2127, %2132
  %2136 = ptrtoint i8* %2129 to i64
  call void @_sym_write_memory(i64 %2136, i64 1, i8* %2115, i8 1)
  store i8 %2116, i8* %2129, align 1
  %2137 = ptrtoint i32* %14 to i64
  %2138 = call i8* @_sym_read_memory(i64 %2137, i64 4, i8 1)
  %2139 = load i32, i32* %14, align 4
  %2140 = icmp eq i8* null, %2138
  br i1 %2140, label %2144, label %2141

2141:                                             ; preds = %2135
  %2142 = call i8* @_sym_build_integer(i64 24, i8 32)
  %2143 = call i8* @_sym_build_logical_shift_right(i8* %2138, i8* %2142)
  br label %2144

2144:                                             ; preds = %2135, %2141
  %2145 = phi i8* [ null, %2135 ], [ %2143, %2141 ]
  %2146 = lshr i32 %2139, 24
  %2147 = icmp eq i8* null, %2145
  br i1 %2147, label %2150, label %2148

2148:                                             ; preds = %2144
  %2149 = call i8* @_sym_build_trunc(i8* %2145, i8 8)
  br label %2150

2150:                                             ; preds = %2144, %2148
  %2151 = phi i8* [ null, %2144 ], [ %2149, %2148 ]
  %2152 = trunc i32 %2146 to i8
  %2153 = ptrtoint i8** %7 to i64
  %2154 = call i8* @_sym_read_memory(i64 %2153, i64 8, i8 1)
  %2155 = load i8*, i8** %7, align 8
  %2156 = icmp eq i8* null, %2154
  %2157 = and i1 true, %2156
  br i1 %2157, label %2163, label %2158

2158:                                             ; preds = %2150
  %2159 = call i8* @_sym_build_integer(i64 16, i8 64)
  %2160 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2161 = call i8* @_sym_build_mul(i8* %2159, i8* %2160)
  %2162 = call i8* @_sym_build_add(i8* %2161, i8* %2154)
  br label %2163

2163:                                             ; preds = %2150, %2158
  %2164 = phi i8* [ null, %2150 ], [ %2162, %2158 ]
  %2165 = getelementptr inbounds i8, i8* %2155, i64 16
  %2166 = ptrtoint i8* %2165 to i64
  %2167 = icmp eq i8* null, %2164
  br i1 %2167, label %2171, label %2168

2168:                                             ; preds = %2163
  %2169 = call i8* @_sym_build_integer(i64 %2166, i8 64)
  %2170 = call i8* @_sym_build_equal(i8* %2164, i8* %2169)
  call void @_sym_push_path_constraint(i8* %2170, i1 true, i64 16689920, i32 39, i32 36)
  br label %2171

2171:                                             ; preds = %2163, %2168
  %2172 = ptrtoint i8* %2165 to i64
  call void @_sym_write_memory(i64 %2172, i64 1, i8* %2151, i8 1)
  store i8 %2152, i8* %2165, align 1
  %2173 = ptrtoint i32* %14 to i64
  %2174 = call i8* @_sym_read_memory(i64 %2173, i64 4, i8 1)
  %2175 = load i32, i32* %14, align 4
  %2176 = icmp eq i8* null, %2174
  br i1 %2176, label %2180, label %2177

2177:                                             ; preds = %2171
  %2178 = call i8* @_sym_build_integer(i64 16, i8 32)
  %2179 = call i8* @_sym_build_logical_shift_right(i8* %2174, i8* %2178)
  br label %2180

2180:                                             ; preds = %2171, %2177
  %2181 = phi i8* [ null, %2171 ], [ %2179, %2177 ]
  %2182 = lshr i32 %2175, 16
  %2183 = icmp eq i8* null, %2181
  br i1 %2183, label %2186, label %2184

2184:                                             ; preds = %2180
  %2185 = call i8* @_sym_build_trunc(i8* %2181, i8 8)
  br label %2186

2186:                                             ; preds = %2180, %2184
  %2187 = phi i8* [ null, %2180 ], [ %2185, %2184 ]
  %2188 = trunc i32 %2182 to i8
  %2189 = ptrtoint i8** %7 to i64
  %2190 = call i8* @_sym_read_memory(i64 %2189, i64 8, i8 1)
  %2191 = load i8*, i8** %7, align 8
  %2192 = icmp eq i8* null, %2190
  %2193 = and i1 true, %2192
  br i1 %2193, label %2199, label %2194

2194:                                             ; preds = %2186
  %2195 = call i8* @_sym_build_integer(i64 17, i8 64)
  %2196 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2197 = call i8* @_sym_build_mul(i8* %2195, i8* %2196)
  %2198 = call i8* @_sym_build_add(i8* %2197, i8* %2190)
  br label %2199

2199:                                             ; preds = %2186, %2194
  %2200 = phi i8* [ null, %2186 ], [ %2198, %2194 ]
  %2201 = getelementptr inbounds i8, i8* %2191, i64 17
  %2202 = ptrtoint i8* %2201 to i64
  %2203 = icmp eq i8* null, %2200
  br i1 %2203, label %2207, label %2204

2204:                                             ; preds = %2199
  %2205 = call i8* @_sym_build_integer(i64 %2202, i8 64)
  %2206 = call i8* @_sym_build_equal(i8* %2200, i8* %2205)
  call void @_sym_push_path_constraint(i8* %2206, i1 true, i64 16690624, i32 39, i32 37)
  br label %2207

2207:                                             ; preds = %2199, %2204
  %2208 = ptrtoint i8* %2201 to i64
  call void @_sym_write_memory(i64 %2208, i64 1, i8* %2187, i8 1)
  store i8 %2188, i8* %2201, align 1
  %2209 = ptrtoint i32* %14 to i64
  %2210 = call i8* @_sym_read_memory(i64 %2209, i64 4, i8 1)
  %2211 = load i32, i32* %14, align 4
  %2212 = icmp eq i8* null, %2210
  br i1 %2212, label %2216, label %2213

2213:                                             ; preds = %2207
  %2214 = call i8* @_sym_build_integer(i64 8, i8 32)
  %2215 = call i8* @_sym_build_logical_shift_right(i8* %2210, i8* %2214)
  br label %2216

2216:                                             ; preds = %2207, %2213
  %2217 = phi i8* [ null, %2207 ], [ %2215, %2213 ]
  %2218 = lshr i32 %2211, 8
  %2219 = icmp eq i8* null, %2217
  br i1 %2219, label %2222, label %2220

2220:                                             ; preds = %2216
  %2221 = call i8* @_sym_build_trunc(i8* %2217, i8 8)
  br label %2222

2222:                                             ; preds = %2216, %2220
  %2223 = phi i8* [ null, %2216 ], [ %2221, %2220 ]
  %2224 = trunc i32 %2218 to i8
  %2225 = ptrtoint i8** %7 to i64
  %2226 = call i8* @_sym_read_memory(i64 %2225, i64 8, i8 1)
  %2227 = load i8*, i8** %7, align 8
  %2228 = icmp eq i8* null, %2226
  %2229 = and i1 true, %2228
  br i1 %2229, label %2235, label %2230

2230:                                             ; preds = %2222
  %2231 = call i8* @_sym_build_integer(i64 18, i8 64)
  %2232 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2233 = call i8* @_sym_build_mul(i8* %2231, i8* %2232)
  %2234 = call i8* @_sym_build_add(i8* %2233, i8* %2226)
  br label %2235

2235:                                             ; preds = %2222, %2230
  %2236 = phi i8* [ null, %2222 ], [ %2234, %2230 ]
  %2237 = getelementptr inbounds i8, i8* %2227, i64 18
  %2238 = ptrtoint i8* %2237 to i64
  %2239 = icmp eq i8* null, %2236
  br i1 %2239, label %2243, label %2240

2240:                                             ; preds = %2235
  %2241 = call i8* @_sym_build_integer(i64 %2238, i8 64)
  %2242 = call i8* @_sym_build_equal(i8* %2236, i8* %2241)
  call void @_sym_push_path_constraint(i8* %2242, i1 true, i64 16691328, i32 39, i32 38)
  br label %2243

2243:                                             ; preds = %2235, %2240
  %2244 = ptrtoint i8* %2237 to i64
  call void @_sym_write_memory(i64 %2244, i64 1, i8* %2223, i8 1)
  store i8 %2224, i8* %2237, align 1
  %2245 = ptrtoint i32* %14 to i64
  %2246 = call i8* @_sym_read_memory(i64 %2245, i64 4, i8 1)
  %2247 = load i32, i32* %14, align 4
  %2248 = icmp eq i8* null, %2246
  br i1 %2248, label %2251, label %2249

2249:                                             ; preds = %2243
  %2250 = call i8* @_sym_build_trunc(i8* %2246, i8 8)
  br label %2251

2251:                                             ; preds = %2243, %2249
  %2252 = phi i8* [ null, %2243 ], [ %2250, %2249 ]
  %2253 = trunc i32 %2247 to i8
  %2254 = ptrtoint i8** %7 to i64
  %2255 = call i8* @_sym_read_memory(i64 %2254, i64 8, i8 1)
  %2256 = load i8*, i8** %7, align 8
  %2257 = icmp eq i8* null, %2255
  %2258 = and i1 true, %2257
  br i1 %2258, label %2264, label %2259

2259:                                             ; preds = %2251
  %2260 = call i8* @_sym_build_integer(i64 19, i8 64)
  %2261 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2262 = call i8* @_sym_build_mul(i8* %2260, i8* %2261)
  %2263 = call i8* @_sym_build_add(i8* %2262, i8* %2255)
  br label %2264

2264:                                             ; preds = %2251, %2259
  %2265 = phi i8* [ null, %2251 ], [ %2263, %2259 ]
  %2266 = getelementptr inbounds i8, i8* %2256, i64 19
  %2267 = ptrtoint i8* %2266 to i64
  %2268 = icmp eq i8* null, %2265
  br i1 %2268, label %2272, label %2269

2269:                                             ; preds = %2264
  %2270 = call i8* @_sym_build_integer(i64 %2267, i8 64)
  %2271 = call i8* @_sym_build_equal(i8* %2265, i8* %2270)
  call void @_sym_push_path_constraint(i8* %2271, i1 true, i64 16691920, i32 39, i32 39)
  br label %2272

2272:                                             ; preds = %2264, %2269
  %2273 = ptrtoint i8* %2266 to i64
  call void @_sym_write_memory(i64 %2273, i64 1, i8* %2252, i8 1)
  store i8 %2253, i8* %2266, align 1
  %2274 = ptrtoint i32* %15 to i64
  %2275 = call i8* @_sym_read_memory(i64 %2274, i64 4, i8 1)
  %2276 = load i32, i32* %15, align 4
  %2277 = icmp eq i8* null, %2275
  br i1 %2277, label %2281, label %2278

2278:                                             ; preds = %2272
  %2279 = call i8* @_sym_build_integer(i64 24, i8 32)
  %2280 = call i8* @_sym_build_logical_shift_right(i8* %2275, i8* %2279)
  br label %2281

2281:                                             ; preds = %2272, %2278
  %2282 = phi i8* [ null, %2272 ], [ %2280, %2278 ]
  %2283 = lshr i32 %2276, 24
  %2284 = icmp eq i8* null, %2282
  br i1 %2284, label %2287, label %2285

2285:                                             ; preds = %2281
  %2286 = call i8* @_sym_build_trunc(i8* %2282, i8 8)
  br label %2287

2287:                                             ; preds = %2281, %2285
  %2288 = phi i8* [ null, %2281 ], [ %2286, %2285 ]
  %2289 = trunc i32 %2283 to i8
  %2290 = ptrtoint i8** %7 to i64
  %2291 = call i8* @_sym_read_memory(i64 %2290, i64 8, i8 1)
  %2292 = load i8*, i8** %7, align 8
  %2293 = icmp eq i8* null, %2291
  %2294 = and i1 true, %2293
  br i1 %2294, label %2300, label %2295

2295:                                             ; preds = %2287
  %2296 = call i8* @_sym_build_integer(i64 20, i8 64)
  %2297 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2298 = call i8* @_sym_build_mul(i8* %2296, i8* %2297)
  %2299 = call i8* @_sym_build_add(i8* %2298, i8* %2291)
  br label %2300

2300:                                             ; preds = %2287, %2295
  %2301 = phi i8* [ null, %2287 ], [ %2299, %2295 ]
  %2302 = getelementptr inbounds i8, i8* %2292, i64 20
  %2303 = ptrtoint i8* %2302 to i64
  %2304 = icmp eq i8* null, %2301
  br i1 %2304, label %2308, label %2305

2305:                                             ; preds = %2300
  %2306 = call i8* @_sym_build_integer(i64 %2303, i8 64)
  %2307 = call i8* @_sym_build_equal(i8* %2301, i8* %2306)
  call void @_sym_push_path_constraint(i8* %2307, i1 true, i64 16692672, i32 39, i32 40)
  br label %2308

2308:                                             ; preds = %2300, %2305
  %2309 = ptrtoint i8* %2302 to i64
  call void @_sym_write_memory(i64 %2309, i64 1, i8* %2288, i8 1)
  store i8 %2289, i8* %2302, align 1
  %2310 = ptrtoint i32* %15 to i64
  %2311 = call i8* @_sym_read_memory(i64 %2310, i64 4, i8 1)
  %2312 = load i32, i32* %15, align 4
  %2313 = icmp eq i8* null, %2311
  br i1 %2313, label %2317, label %2314

2314:                                             ; preds = %2308
  %2315 = call i8* @_sym_build_integer(i64 16, i8 32)
  %2316 = call i8* @_sym_build_logical_shift_right(i8* %2311, i8* %2315)
  br label %2317

2317:                                             ; preds = %2308, %2314
  %2318 = phi i8* [ null, %2308 ], [ %2316, %2314 ]
  %2319 = lshr i32 %2312, 16
  %2320 = icmp eq i8* null, %2318
  br i1 %2320, label %2323, label %2321

2321:                                             ; preds = %2317
  %2322 = call i8* @_sym_build_trunc(i8* %2318, i8 8)
  br label %2323

2323:                                             ; preds = %2317, %2321
  %2324 = phi i8* [ null, %2317 ], [ %2322, %2321 ]
  %2325 = trunc i32 %2319 to i8
  %2326 = ptrtoint i8** %7 to i64
  %2327 = call i8* @_sym_read_memory(i64 %2326, i64 8, i8 1)
  %2328 = load i8*, i8** %7, align 8
  %2329 = icmp eq i8* null, %2327
  %2330 = and i1 true, %2329
  br i1 %2330, label %2336, label %2331

2331:                                             ; preds = %2323
  %2332 = call i8* @_sym_build_integer(i64 21, i8 64)
  %2333 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2334 = call i8* @_sym_build_mul(i8* %2332, i8* %2333)
  %2335 = call i8* @_sym_build_add(i8* %2334, i8* %2327)
  br label %2336

2336:                                             ; preds = %2323, %2331
  %2337 = phi i8* [ null, %2323 ], [ %2335, %2331 ]
  %2338 = getelementptr inbounds i8, i8* %2328, i64 21
  %2339 = ptrtoint i8* %2338 to i64
  %2340 = icmp eq i8* null, %2337
  br i1 %2340, label %2344, label %2341

2341:                                             ; preds = %2336
  %2342 = call i8* @_sym_build_integer(i64 %2339, i8 64)
  %2343 = call i8* @_sym_build_equal(i8* %2337, i8* %2342)
  call void @_sym_push_path_constraint(i8* %2343, i1 true, i64 16693424, i32 39, i32 41)
  br label %2344

2344:                                             ; preds = %2336, %2341
  %2345 = ptrtoint i8* %2338 to i64
  call void @_sym_write_memory(i64 %2345, i64 1, i8* %2324, i8 1)
  store i8 %2325, i8* %2338, align 1
  %2346 = ptrtoint i32* %15 to i64
  %2347 = call i8* @_sym_read_memory(i64 %2346, i64 4, i8 1)
  %2348 = load i32, i32* %15, align 4
  %2349 = icmp eq i8* null, %2347
  br i1 %2349, label %2353, label %2350

2350:                                             ; preds = %2344
  %2351 = call i8* @_sym_build_integer(i64 8, i8 32)
  %2352 = call i8* @_sym_build_logical_shift_right(i8* %2347, i8* %2351)
  br label %2353

2353:                                             ; preds = %2344, %2350
  %2354 = phi i8* [ null, %2344 ], [ %2352, %2350 ]
  %2355 = lshr i32 %2348, 8
  %2356 = icmp eq i8* null, %2354
  br i1 %2356, label %2359, label %2357

2357:                                             ; preds = %2353
  %2358 = call i8* @_sym_build_trunc(i8* %2354, i8 8)
  br label %2359

2359:                                             ; preds = %2353, %2357
  %2360 = phi i8* [ null, %2353 ], [ %2358, %2357 ]
  %2361 = trunc i32 %2355 to i8
  %2362 = ptrtoint i8** %7 to i64
  %2363 = call i8* @_sym_read_memory(i64 %2362, i64 8, i8 1)
  %2364 = load i8*, i8** %7, align 8
  %2365 = icmp eq i8* null, %2363
  %2366 = and i1 true, %2365
  br i1 %2366, label %2372, label %2367

2367:                                             ; preds = %2359
  %2368 = call i8* @_sym_build_integer(i64 22, i8 64)
  %2369 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2370 = call i8* @_sym_build_mul(i8* %2368, i8* %2369)
  %2371 = call i8* @_sym_build_add(i8* %2370, i8* %2363)
  br label %2372

2372:                                             ; preds = %2359, %2367
  %2373 = phi i8* [ null, %2359 ], [ %2371, %2367 ]
  %2374 = getelementptr inbounds i8, i8* %2364, i64 22
  %2375 = ptrtoint i8* %2374 to i64
  %2376 = icmp eq i8* null, %2373
  br i1 %2376, label %2380, label %2377

2377:                                             ; preds = %2372
  %2378 = call i8* @_sym_build_integer(i64 %2375, i8 64)
  %2379 = call i8* @_sym_build_equal(i8* %2373, i8* %2378)
  call void @_sym_push_path_constraint(i8* %2379, i1 true, i64 16694128, i32 39, i32 42)
  br label %2380

2380:                                             ; preds = %2372, %2377
  %2381 = ptrtoint i8* %2374 to i64
  call void @_sym_write_memory(i64 %2381, i64 1, i8* %2360, i8 1)
  store i8 %2361, i8* %2374, align 1
  %2382 = ptrtoint i32* %15 to i64
  %2383 = call i8* @_sym_read_memory(i64 %2382, i64 4, i8 1)
  %2384 = load i32, i32* %15, align 4
  %2385 = icmp eq i8* null, %2383
  br i1 %2385, label %2388, label %2386

2386:                                             ; preds = %2380
  %2387 = call i8* @_sym_build_trunc(i8* %2383, i8 8)
  br label %2388

2388:                                             ; preds = %2380, %2386
  %2389 = phi i8* [ null, %2380 ], [ %2387, %2386 ]
  %2390 = trunc i32 %2384 to i8
  %2391 = ptrtoint i8** %7 to i64
  %2392 = call i8* @_sym_read_memory(i64 %2391, i64 8, i8 1)
  %2393 = load i8*, i8** %7, align 8
  %2394 = icmp eq i8* null, %2392
  %2395 = and i1 true, %2394
  br i1 %2395, label %2401, label %2396

2396:                                             ; preds = %2388
  %2397 = call i8* @_sym_build_integer(i64 23, i8 64)
  %2398 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2399 = call i8* @_sym_build_mul(i8* %2397, i8* %2398)
  %2400 = call i8* @_sym_build_add(i8* %2399, i8* %2392)
  br label %2401

2401:                                             ; preds = %2388, %2396
  %2402 = phi i8* [ null, %2388 ], [ %2400, %2396 ]
  %2403 = getelementptr inbounds i8, i8* %2393, i64 23
  %2404 = ptrtoint i8* %2403 to i64
  %2405 = icmp eq i8* null, %2402
  br i1 %2405, label %2409, label %2406

2406:                                             ; preds = %2401
  %2407 = call i8* @_sym_build_integer(i64 %2404, i8 64)
  %2408 = call i8* @_sym_build_equal(i8* %2402, i8* %2407)
  call void @_sym_push_path_constraint(i8* %2408, i1 true, i64 16694768, i32 39, i32 43)
  br label %2409

2409:                                             ; preds = %2401, %2406
  %2410 = ptrtoint i8* %2403 to i64
  call void @_sym_write_memory(i64 %2410, i64 1, i8* %2389, i8 1)
  store i8 %2390, i8* %2403, align 1
  %2411 = ptrtoint i32* %16 to i64
  %2412 = call i8* @_sym_read_memory(i64 %2411, i64 4, i8 1)
  %2413 = load i32, i32* %16, align 4
  %2414 = icmp eq i8* null, %2412
  br i1 %2414, label %2418, label %2415

2415:                                             ; preds = %2409
  %2416 = call i8* @_sym_build_integer(i64 24, i8 32)
  %2417 = call i8* @_sym_build_logical_shift_right(i8* %2412, i8* %2416)
  br label %2418

2418:                                             ; preds = %2409, %2415
  %2419 = phi i8* [ null, %2409 ], [ %2417, %2415 ]
  %2420 = lshr i32 %2413, 24
  %2421 = icmp eq i8* null, %2419
  br i1 %2421, label %2424, label %2422

2422:                                             ; preds = %2418
  %2423 = call i8* @_sym_build_trunc(i8* %2419, i8 8)
  br label %2424

2424:                                             ; preds = %2418, %2422
  %2425 = phi i8* [ null, %2418 ], [ %2423, %2422 ]
  %2426 = trunc i32 %2420 to i8
  %2427 = ptrtoint i8** %7 to i64
  %2428 = call i8* @_sym_read_memory(i64 %2427, i64 8, i8 1)
  %2429 = load i8*, i8** %7, align 8
  %2430 = icmp eq i8* null, %2428
  %2431 = and i1 true, %2430
  br i1 %2431, label %2437, label %2432

2432:                                             ; preds = %2424
  %2433 = call i8* @_sym_build_integer(i64 24, i8 64)
  %2434 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2435 = call i8* @_sym_build_mul(i8* %2433, i8* %2434)
  %2436 = call i8* @_sym_build_add(i8* %2435, i8* %2428)
  br label %2437

2437:                                             ; preds = %2424, %2432
  %2438 = phi i8* [ null, %2424 ], [ %2436, %2432 ]
  %2439 = getelementptr inbounds i8, i8* %2429, i64 24
  %2440 = ptrtoint i8* %2439 to i64
  %2441 = icmp eq i8* null, %2438
  br i1 %2441, label %2445, label %2442

2442:                                             ; preds = %2437
  %2443 = call i8* @_sym_build_integer(i64 %2440, i8 64)
  %2444 = call i8* @_sym_build_equal(i8* %2438, i8* %2443)
  call void @_sym_push_path_constraint(i8* %2444, i1 true, i64 16695472, i32 39, i32 44)
  br label %2445

2445:                                             ; preds = %2437, %2442
  %2446 = ptrtoint i8* %2439 to i64
  call void @_sym_write_memory(i64 %2446, i64 1, i8* %2425, i8 1)
  store i8 %2426, i8* %2439, align 1
  %2447 = ptrtoint i32* %16 to i64
  %2448 = call i8* @_sym_read_memory(i64 %2447, i64 4, i8 1)
  %2449 = load i32, i32* %16, align 4
  %2450 = icmp eq i8* null, %2448
  br i1 %2450, label %2454, label %2451

2451:                                             ; preds = %2445
  %2452 = call i8* @_sym_build_integer(i64 16, i8 32)
  %2453 = call i8* @_sym_build_logical_shift_right(i8* %2448, i8* %2452)
  br label %2454

2454:                                             ; preds = %2445, %2451
  %2455 = phi i8* [ null, %2445 ], [ %2453, %2451 ]
  %2456 = lshr i32 %2449, 16
  %2457 = icmp eq i8* null, %2455
  br i1 %2457, label %2460, label %2458

2458:                                             ; preds = %2454
  %2459 = call i8* @_sym_build_trunc(i8* %2455, i8 8)
  br label %2460

2460:                                             ; preds = %2454, %2458
  %2461 = phi i8* [ null, %2454 ], [ %2459, %2458 ]
  %2462 = trunc i32 %2456 to i8
  %2463 = ptrtoint i8** %7 to i64
  %2464 = call i8* @_sym_read_memory(i64 %2463, i64 8, i8 1)
  %2465 = load i8*, i8** %7, align 8
  %2466 = icmp eq i8* null, %2464
  %2467 = and i1 true, %2466
  br i1 %2467, label %2473, label %2468

2468:                                             ; preds = %2460
  %2469 = call i8* @_sym_build_integer(i64 25, i8 64)
  %2470 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2471 = call i8* @_sym_build_mul(i8* %2469, i8* %2470)
  %2472 = call i8* @_sym_build_add(i8* %2471, i8* %2464)
  br label %2473

2473:                                             ; preds = %2460, %2468
  %2474 = phi i8* [ null, %2460 ], [ %2472, %2468 ]
  %2475 = getelementptr inbounds i8, i8* %2465, i64 25
  %2476 = ptrtoint i8* %2475 to i64
  %2477 = icmp eq i8* null, %2474
  br i1 %2477, label %2481, label %2478

2478:                                             ; preds = %2473
  %2479 = call i8* @_sym_build_integer(i64 %2476, i8 64)
  %2480 = call i8* @_sym_build_equal(i8* %2474, i8* %2479)
  call void @_sym_push_path_constraint(i8* %2480, i1 true, i64 16696176, i32 39, i32 45)
  br label %2481

2481:                                             ; preds = %2473, %2478
  %2482 = ptrtoint i8* %2475 to i64
  call void @_sym_write_memory(i64 %2482, i64 1, i8* %2461, i8 1)
  store i8 %2462, i8* %2475, align 1
  %2483 = ptrtoint i32* %16 to i64
  %2484 = call i8* @_sym_read_memory(i64 %2483, i64 4, i8 1)
  %2485 = load i32, i32* %16, align 4
  %2486 = icmp eq i8* null, %2484
  br i1 %2486, label %2490, label %2487

2487:                                             ; preds = %2481
  %2488 = call i8* @_sym_build_integer(i64 8, i8 32)
  %2489 = call i8* @_sym_build_logical_shift_right(i8* %2484, i8* %2488)
  br label %2490

2490:                                             ; preds = %2481, %2487
  %2491 = phi i8* [ null, %2481 ], [ %2489, %2487 ]
  %2492 = lshr i32 %2485, 8
  %2493 = icmp eq i8* null, %2491
  br i1 %2493, label %2496, label %2494

2494:                                             ; preds = %2490
  %2495 = call i8* @_sym_build_trunc(i8* %2491, i8 8)
  br label %2496

2496:                                             ; preds = %2490, %2494
  %2497 = phi i8* [ null, %2490 ], [ %2495, %2494 ]
  %2498 = trunc i32 %2492 to i8
  %2499 = ptrtoint i8** %7 to i64
  %2500 = call i8* @_sym_read_memory(i64 %2499, i64 8, i8 1)
  %2501 = load i8*, i8** %7, align 8
  %2502 = icmp eq i8* null, %2500
  %2503 = and i1 true, %2502
  br i1 %2503, label %2509, label %2504

2504:                                             ; preds = %2496
  %2505 = call i8* @_sym_build_integer(i64 26, i8 64)
  %2506 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2507 = call i8* @_sym_build_mul(i8* %2505, i8* %2506)
  %2508 = call i8* @_sym_build_add(i8* %2507, i8* %2500)
  br label %2509

2509:                                             ; preds = %2496, %2504
  %2510 = phi i8* [ null, %2496 ], [ %2508, %2504 ]
  %2511 = getelementptr inbounds i8, i8* %2501, i64 26
  %2512 = ptrtoint i8* %2511 to i64
  %2513 = icmp eq i8* null, %2510
  br i1 %2513, label %2517, label %2514

2514:                                             ; preds = %2509
  %2515 = call i8* @_sym_build_integer(i64 %2512, i8 64)
  %2516 = call i8* @_sym_build_equal(i8* %2510, i8* %2515)
  call void @_sym_push_path_constraint(i8* %2516, i1 true, i64 16696928, i32 39, i32 46)
  br label %2517

2517:                                             ; preds = %2509, %2514
  %2518 = ptrtoint i8* %2511 to i64
  call void @_sym_write_memory(i64 %2518, i64 1, i8* %2497, i8 1)
  store i8 %2498, i8* %2511, align 1
  %2519 = ptrtoint i32* %16 to i64
  %2520 = call i8* @_sym_read_memory(i64 %2519, i64 4, i8 1)
  %2521 = load i32, i32* %16, align 4
  %2522 = icmp eq i8* null, %2520
  br i1 %2522, label %2525, label %2523

2523:                                             ; preds = %2517
  %2524 = call i8* @_sym_build_trunc(i8* %2520, i8 8)
  br label %2525

2525:                                             ; preds = %2517, %2523
  %2526 = phi i8* [ null, %2517 ], [ %2524, %2523 ]
  %2527 = trunc i32 %2521 to i8
  %2528 = ptrtoint i8** %7 to i64
  %2529 = call i8* @_sym_read_memory(i64 %2528, i64 8, i8 1)
  %2530 = load i8*, i8** %7, align 8
  %2531 = icmp eq i8* null, %2529
  %2532 = and i1 true, %2531
  br i1 %2532, label %2538, label %2533

2533:                                             ; preds = %2525
  %2534 = call i8* @_sym_build_integer(i64 27, i8 64)
  %2535 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2536 = call i8* @_sym_build_mul(i8* %2534, i8* %2535)
  %2537 = call i8* @_sym_build_add(i8* %2536, i8* %2529)
  br label %2538

2538:                                             ; preds = %2525, %2533
  %2539 = phi i8* [ null, %2525 ], [ %2537, %2533 ]
  %2540 = getelementptr inbounds i8, i8* %2530, i64 27
  %2541 = ptrtoint i8* %2540 to i64
  %2542 = icmp eq i8* null, %2539
  br i1 %2542, label %2546, label %2543

2543:                                             ; preds = %2538
  %2544 = call i8* @_sym_build_integer(i64 %2541, i8 64)
  %2545 = call i8* @_sym_build_equal(i8* %2539, i8* %2544)
  call void @_sym_push_path_constraint(i8* %2545, i1 true, i64 16697568, i32 39, i32 47)
  br label %2546

2546:                                             ; preds = %2538, %2543
  %2547 = ptrtoint i8* %2540 to i64
  call void @_sym_write_memory(i64 %2547, i64 1, i8* %2526, i8 1)
  store i8 %2527, i8* %2540, align 1
  %2548 = ptrtoint i32* %17 to i64
  %2549 = call i8* @_sym_read_memory(i64 %2548, i64 4, i8 1)
  %2550 = load i32, i32* %17, align 4
  %2551 = icmp eq i8* null, %2549
  br i1 %2551, label %2555, label %2552

2552:                                             ; preds = %2546
  %2553 = call i8* @_sym_build_integer(i64 24, i8 32)
  %2554 = call i8* @_sym_build_logical_shift_right(i8* %2549, i8* %2553)
  br label %2555

2555:                                             ; preds = %2546, %2552
  %2556 = phi i8* [ null, %2546 ], [ %2554, %2552 ]
  %2557 = lshr i32 %2550, 24
  %2558 = icmp eq i8* null, %2556
  br i1 %2558, label %2561, label %2559

2559:                                             ; preds = %2555
  %2560 = call i8* @_sym_build_trunc(i8* %2556, i8 8)
  br label %2561

2561:                                             ; preds = %2555, %2559
  %2562 = phi i8* [ null, %2555 ], [ %2560, %2559 ]
  %2563 = trunc i32 %2557 to i8
  %2564 = ptrtoint i8** %7 to i64
  %2565 = call i8* @_sym_read_memory(i64 %2564, i64 8, i8 1)
  %2566 = load i8*, i8** %7, align 8
  %2567 = icmp eq i8* null, %2565
  %2568 = and i1 true, %2567
  br i1 %2568, label %2574, label %2569

2569:                                             ; preds = %2561
  %2570 = call i8* @_sym_build_integer(i64 28, i8 64)
  %2571 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2572 = call i8* @_sym_build_mul(i8* %2570, i8* %2571)
  %2573 = call i8* @_sym_build_add(i8* %2572, i8* %2565)
  br label %2574

2574:                                             ; preds = %2561, %2569
  %2575 = phi i8* [ null, %2561 ], [ %2573, %2569 ]
  %2576 = getelementptr inbounds i8, i8* %2566, i64 28
  %2577 = ptrtoint i8* %2576 to i64
  %2578 = icmp eq i8* null, %2575
  br i1 %2578, label %2582, label %2579

2579:                                             ; preds = %2574
  %2580 = call i8* @_sym_build_integer(i64 %2577, i8 64)
  %2581 = call i8* @_sym_build_equal(i8* %2575, i8* %2580)
  call void @_sym_push_path_constraint(i8* %2581, i1 true, i64 16698320, i32 39, i32 48)
  br label %2582

2582:                                             ; preds = %2574, %2579
  %2583 = ptrtoint i8* %2576 to i64
  call void @_sym_write_memory(i64 %2583, i64 1, i8* %2562, i8 1)
  store i8 %2563, i8* %2576, align 1
  %2584 = ptrtoint i32* %17 to i64
  %2585 = call i8* @_sym_read_memory(i64 %2584, i64 4, i8 1)
  %2586 = load i32, i32* %17, align 4
  %2587 = icmp eq i8* null, %2585
  br i1 %2587, label %2591, label %2588

2588:                                             ; preds = %2582
  %2589 = call i8* @_sym_build_integer(i64 16, i8 32)
  %2590 = call i8* @_sym_build_logical_shift_right(i8* %2585, i8* %2589)
  br label %2591

2591:                                             ; preds = %2582, %2588
  %2592 = phi i8* [ null, %2582 ], [ %2590, %2588 ]
  %2593 = lshr i32 %2586, 16
  %2594 = icmp eq i8* null, %2592
  br i1 %2594, label %2597, label %2595

2595:                                             ; preds = %2591
  %2596 = call i8* @_sym_build_trunc(i8* %2592, i8 8)
  br label %2597

2597:                                             ; preds = %2591, %2595
  %2598 = phi i8* [ null, %2591 ], [ %2596, %2595 ]
  %2599 = trunc i32 %2593 to i8
  %2600 = ptrtoint i8** %7 to i64
  %2601 = call i8* @_sym_read_memory(i64 %2600, i64 8, i8 1)
  %2602 = load i8*, i8** %7, align 8
  %2603 = icmp eq i8* null, %2601
  %2604 = and i1 true, %2603
  br i1 %2604, label %2610, label %2605

2605:                                             ; preds = %2597
  %2606 = call i8* @_sym_build_integer(i64 29, i8 64)
  %2607 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2608 = call i8* @_sym_build_mul(i8* %2606, i8* %2607)
  %2609 = call i8* @_sym_build_add(i8* %2608, i8* %2601)
  br label %2610

2610:                                             ; preds = %2597, %2605
  %2611 = phi i8* [ null, %2597 ], [ %2609, %2605 ]
  %2612 = getelementptr inbounds i8, i8* %2602, i64 29
  %2613 = ptrtoint i8* %2612 to i64
  %2614 = icmp eq i8* null, %2611
  br i1 %2614, label %2618, label %2615

2615:                                             ; preds = %2610
  %2616 = call i8* @_sym_build_integer(i64 %2613, i8 64)
  %2617 = call i8* @_sym_build_equal(i8* %2611, i8* %2616)
  call void @_sym_push_path_constraint(i8* %2617, i1 true, i64 16699072, i32 39, i32 49)
  br label %2618

2618:                                             ; preds = %2610, %2615
  %2619 = ptrtoint i8* %2612 to i64
  call void @_sym_write_memory(i64 %2619, i64 1, i8* %2598, i8 1)
  store i8 %2599, i8* %2612, align 1
  %2620 = ptrtoint i32* %17 to i64
  %2621 = call i8* @_sym_read_memory(i64 %2620, i64 4, i8 1)
  %2622 = load i32, i32* %17, align 4
  %2623 = icmp eq i8* null, %2621
  br i1 %2623, label %2627, label %2624

2624:                                             ; preds = %2618
  %2625 = call i8* @_sym_build_integer(i64 8, i8 32)
  %2626 = call i8* @_sym_build_logical_shift_right(i8* %2621, i8* %2625)
  br label %2627

2627:                                             ; preds = %2618, %2624
  %2628 = phi i8* [ null, %2618 ], [ %2626, %2624 ]
  %2629 = lshr i32 %2622, 8
  %2630 = icmp eq i8* null, %2628
  br i1 %2630, label %2633, label %2631

2631:                                             ; preds = %2627
  %2632 = call i8* @_sym_build_trunc(i8* %2628, i8 8)
  br label %2633

2633:                                             ; preds = %2627, %2631
  %2634 = phi i8* [ null, %2627 ], [ %2632, %2631 ]
  %2635 = trunc i32 %2629 to i8
  %2636 = ptrtoint i8** %7 to i64
  %2637 = call i8* @_sym_read_memory(i64 %2636, i64 8, i8 1)
  %2638 = load i8*, i8** %7, align 8
  %2639 = icmp eq i8* null, %2637
  %2640 = and i1 true, %2639
  br i1 %2640, label %2646, label %2641

2641:                                             ; preds = %2633
  %2642 = call i8* @_sym_build_integer(i64 30, i8 64)
  %2643 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2644 = call i8* @_sym_build_mul(i8* %2642, i8* %2643)
  %2645 = call i8* @_sym_build_add(i8* %2644, i8* %2637)
  br label %2646

2646:                                             ; preds = %2633, %2641
  %2647 = phi i8* [ null, %2633 ], [ %2645, %2641 ]
  %2648 = getelementptr inbounds i8, i8* %2638, i64 30
  %2649 = ptrtoint i8* %2648 to i64
  %2650 = icmp eq i8* null, %2647
  br i1 %2650, label %2654, label %2651

2651:                                             ; preds = %2646
  %2652 = call i8* @_sym_build_integer(i64 %2649, i8 64)
  %2653 = call i8* @_sym_build_equal(i8* %2647, i8* %2652)
  call void @_sym_push_path_constraint(i8* %2653, i1 true, i64 16699824, i32 39, i32 50)
  br label %2654

2654:                                             ; preds = %2646, %2651
  %2655 = ptrtoint i8* %2648 to i64
  call void @_sym_write_memory(i64 %2655, i64 1, i8* %2634, i8 1)
  store i8 %2635, i8* %2648, align 1
  %2656 = ptrtoint i32* %17 to i64
  %2657 = call i8* @_sym_read_memory(i64 %2656, i64 4, i8 1)
  %2658 = load i32, i32* %17, align 4
  %2659 = icmp eq i8* null, %2657
  br i1 %2659, label %2662, label %2660

2660:                                             ; preds = %2654
  %2661 = call i8* @_sym_build_trunc(i8* %2657, i8 8)
  br label %2662

2662:                                             ; preds = %2654, %2660
  %2663 = phi i8* [ null, %2654 ], [ %2661, %2660 ]
  %2664 = trunc i32 %2658 to i8
  %2665 = ptrtoint i8** %7 to i64
  %2666 = call i8* @_sym_read_memory(i64 %2665, i64 8, i8 1)
  %2667 = load i8*, i8** %7, align 8
  %2668 = icmp eq i8* null, %2666
  %2669 = and i1 true, %2668
  br i1 %2669, label %2675, label %2670

2670:                                             ; preds = %2662
  %2671 = call i8* @_sym_build_integer(i64 31, i8 64)
  %2672 = call i8* @_sym_build_integer(i64 1, i8 64)
  %2673 = call i8* @_sym_build_mul(i8* %2671, i8* %2672)
  %2674 = call i8* @_sym_build_add(i8* %2673, i8* %2666)
  br label %2675

2675:                                             ; preds = %2662, %2670
  %2676 = phi i8* [ null, %2662 ], [ %2674, %2670 ]
  %2677 = getelementptr inbounds i8, i8* %2667, i64 31
  %2678 = ptrtoint i8* %2677 to i64
  %2679 = icmp eq i8* null, %2676
  br i1 %2679, label %2683, label %2680

2680:                                             ; preds = %2675
  %2681 = call i8* @_sym_build_integer(i64 %2678, i8 64)
  %2682 = call i8* @_sym_build_equal(i8* %2676, i8* %2681)
  call void @_sym_push_path_constraint(i8* %2682, i1 true, i64 16700464, i32 39, i32 51)
  br label %2683

2683:                                             ; preds = %2675, %2680
  %2684 = ptrtoint i8* %2677 to i64
  call void @_sym_write_memory(i64 %2684, i64 1, i8* %2663, i8 1)
  store i8 %2664, i8* %2677, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_buf_state(%struct.buffer_state* %0, i8* %1, i64 %2) #0 {
  call void @_sym_notify_basic_block(i64 16729824)
  %4 = call i8* @_sym_get_parameter_expression(i8 0)
  %5 = call i8* @_sym_get_parameter_expression(i8 1)
  %6 = call i8* @_sym_get_parameter_expression(i8 2)
  %7 = alloca %struct.buffer_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = ptrtoint %struct.buffer_state** %7 to i64
  call void @_sym_write_memory(i64 %10, i64 8, i8* %4, i8 1)
  store %struct.buffer_state* %0, %struct.buffer_state** %7, align 8
  %11 = ptrtoint i8** %8 to i64
  call void @_sym_write_memory(i64 %11, i64 8, i8* %5, i8 1)
  store i8* %1, i8** %8, align 8
  %12 = ptrtoint i64* %9 to i64
  call void @_sym_write_memory(i64 %12, i64 8, i8* %6, i8 1)
  store i64 %2, i64* %9, align 8
  %13 = ptrtoint i8** %8 to i64
  %14 = call i8* @_sym_read_memory(i64 %13, i64 8, i8 1)
  %15 = load i8*, i8** %8, align 8
  %16 = ptrtoint %struct.buffer_state** %7 to i64
  %17 = call i8* @_sym_read_memory(i64 %16, i64 8, i8 1)
  %18 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %18, i32 0, i32 0
  %20 = ptrtoint i8** %19 to i64
  %21 = icmp eq i8* null, %17
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = call i8* @_sym_build_integer(i64 %20, i8 64)
  %24 = call i8* @_sym_build_equal(i8* %17, i8* %23)
  call void @_sym_push_path_constraint(i8* %24, i1 true, i64 16718296, i32 39, i32 52)
  br label %25

25:                                               ; preds = %3, %22
  %26 = ptrtoint i8** %19 to i64
  call void @_sym_write_memory(i64 %26, i64 8, i8* %14, i8 1)
  store i8* %15, i8** %19, align 8
  %27 = ptrtoint i64* %9 to i64
  %28 = call i8* @_sym_read_memory(i64 %27, i64 8, i8 1)
  %29 = load i64, i64* %9, align 8
  %30 = ptrtoint %struct.buffer_state** %7 to i64
  %31 = call i8* @_sym_read_memory(i64 %30, i64 8, i8 1)
  %32 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %33 = icmp eq i8* null, %31
  %34 = and i1 true, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = call i8* @_sym_build_integer(i64 8, i8 64)
  %37 = call i8* @_sym_build_add(i8* %36, i8* %31)
  br label %38

38:                                               ; preds = %25, %35
  %39 = phi i8* [ null, %25 ], [ %37, %35 ]
  %40 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %32, i32 0, i32 1
  %41 = ptrtoint i64* %40 to i64
  %42 = icmp eq i8* null, %39
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = call i8* @_sym_build_integer(i64 %41, i8 64)
  %45 = call i8* @_sym_build_equal(i8* %39, i8* %44)
  call void @_sym_push_path_constraint(i8* %45, i1 true, i64 16738488, i32 39, i32 53)
  br label %46

46:                                               ; preds = %38, %43
  %47 = ptrtoint i64* %40 to i64
  call void @_sym_write_memory(i64 %47, i64 8, i8* %28, i8 1)
  store i64 %29, i64* %40, align 8
  %48 = ptrtoint i64* %9 to i64
  %49 = call i8* @_sym_read_memory(i64 %48, i64 8, i8 1)
  %50 = load i64, i64* %9, align 8
  %51 = ptrtoint %struct.buffer_state** %7 to i64
  %52 = call i8* @_sym_read_memory(i64 %51, i64 8, i8 1)
  %53 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %54 = icmp eq i8* null, %52
  %55 = and i1 true, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = call i8* @_sym_build_integer(i64 16, i8 64)
  %58 = call i8* @_sym_build_add(i8* %57, i8* %52)
  br label %59

59:                                               ; preds = %46, %56
  %60 = phi i8* [ null, %46 ], [ %58, %56 ]
  %61 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %53, i32 0, i32 2
  %62 = ptrtoint i64* %61 to i64
  %63 = icmp eq i8* null, %60
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = call i8* @_sym_build_integer(i64 %62, i8 64)
  %66 = call i8* @_sym_build_equal(i8* %60, i8* %65)
  call void @_sym_push_path_constraint(i8* %66, i1 true, i64 16738776, i32 39, i32 54)
  br label %67

67:                                               ; preds = %59, %64
  %68 = ptrtoint i64* %61 to i64
  call void @_sym_write_memory(i64 %68, i64 8, i8* %49, i8 1)
  store i64 %50, i64* %61, align 8
  %69 = ptrtoint %struct.buffer_state** %7 to i64
  %70 = call i8* @_sym_read_memory(i64 %69, i64 8, i8 1)
  %71 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %72 = icmp eq i8* null, %70
  %73 = and i1 true, %72
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = call i8* @_sym_build_integer(i64 24, i8 64)
  %76 = call i8* @_sym_build_add(i8* %75, i8* %70)
  br label %77

77:                                               ; preds = %67, %74
  %78 = phi i8* [ null, %67 ], [ %76, %74 ]
  %79 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %71, i32 0, i32 3
  %80 = ptrtoint i32* %79 to i64
  %81 = icmp eq i8* null, %78
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = call i8* @_sym_build_integer(i64 %80, i8 64)
  %84 = call i8* @_sym_build_equal(i8* %78, i8* %83)
  call void @_sym_push_path_constraint(i8* %84, i1 true, i64 16739064, i32 39, i32 55)
  br label %85

85:                                               ; preds = %77, %82
  %86 = ptrtoint i32* %79 to i64
  call void @_sym_write_memory(i64 %86, i64 4, i8* null, i8 1)
  store i32 0, i32* %79, align 8
  %87 = ptrtoint %struct.buffer_state** %7 to i64
  %88 = call i8* @_sym_read_memory(i64 %87, i64 8, i8 1)
  %89 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %90 = icmp eq i8* null, %88
  %91 = and i1 true, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = call i8* @_sym_build_integer(i64 28, i8 64)
  %94 = call i8* @_sym_build_add(i8* %93, i8* %88)
  br label %95

95:                                               ; preds = %85, %92
  %96 = phi i8* [ null, %85 ], [ %94, %92 ]
  %97 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %89, i32 0, i32 4
  %98 = ptrtoint i32* %97 to i64
  %99 = icmp eq i8* null, %96
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = call i8* @_sym_build_integer(i64 %98, i8 64)
  %102 = call i8* @_sym_build_equal(i8* %96, i8* %101)
  call void @_sym_push_path_constraint(i8* %102, i1 true, i64 16739448, i32 39, i32 56)
  br label %103

103:                                              ; preds = %95, %100
  %104 = ptrtoint i32* %97 to i64
  call void @_sym_write_memory(i64 %104, i64 4, i8* null, i8 1)
  store i32 0, i32* %97, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_chunk(i8* %0, %struct.buffer_state* %1) #0 {
  call void @_sym_notify_basic_block(i64 16718656)
  %3 = call i8* @_sym_get_parameter_expression(i8 0)
  %4 = call i8* @_sym_get_parameter_expression(i8 1)
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = ptrtoint i8** %6 to i64
  call void @_sym_write_memory(i64 %11, i64 8, i8* %3, i8 1)
  store i8* %0, i8** %6, align 8
  %12 = ptrtoint %struct.buffer_state** %7 to i64
  call void @_sym_write_memory(i64 %12, i64 8, i8* %4, i8 1)
  store %struct.buffer_state* %1, %struct.buffer_state** %7, align 8
  %13 = ptrtoint %struct.buffer_state** %7 to i64
  %14 = call i8* @_sym_read_memory(i64 %13, i64 8, i8 1)
  %15 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %16 = icmp eq i8* null, %14
  %17 = and i1 true, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = call i8* @_sym_build_integer(i64 28, i8 64)
  %20 = call i8* @_sym_build_add(i8* %19, i8* %14)
  br label %21

21:                                               ; preds = %2, %18
  %22 = phi i8* [ null, %2 ], [ %20, %18 ]
  %23 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %15, i32 0, i32 4
  %24 = ptrtoint i32* %23 to i64
  %25 = icmp eq i8* null, %22
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = call i8* @_sym_build_integer(i64 %24, i8 64)
  %28 = call i8* @_sym_build_equal(i8* %22, i8* %27)
  call void @_sym_push_path_constraint(i8* %28, i1 true, i64 16737656, i32 39, i32 57)
  br label %29

29:                                               ; preds = %21, %26
  %30 = ptrtoint i32* %23 to i64
  %31 = call i8* @_sym_read_memory(i64 %30, i64 4, i8 1)
  %32 = load i32, i32* %23, align 4
  %33 = icmp eq i8* null, %31
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = call i8* @_sym_build_integer(i64 0, i8 32)
  %36 = call i8* @_sym_build_not_equal(i8* %31, i8* %35)
  br label %37

37:                                               ; preds = %29, %34
  %38 = phi i8* [ null, %29 ], [ %36, %34 ]
  %39 = icmp ne i32 %32, 0
  %40 = icmp eq i8* null, %38
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  call void @_sym_push_path_constraint(i8* %38, i1 %39, i64 16735352, i32 39, i32 58)
  br label %42

42:                                               ; preds = %37, %41
  br i1 %39, label %43, label %45

43:                                               ; preds = %42
  call void @_sym_notify_basic_block(i64 16739776)
  %44 = ptrtoint i32* %5 to i64
  call void @_sym_write_memory(i64 %44, i64 4, i8* null, i8 1)
  store i32 0, i32* %5, align 4
  br label %862

45:                                               ; preds = %42
  call void @_sym_notify_basic_block(i64 16733008)
  %46 = ptrtoint %struct.buffer_state** %7 to i64
  %47 = call i8* @_sym_read_memory(i64 %46, i64 8, i8 1)
  %48 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %49 = icmp eq i8* null, %47
  %50 = and i1 true, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = call i8* @_sym_build_integer(i64 8, i8 64)
  %53 = call i8* @_sym_build_add(i8* %52, i8* %47)
  br label %54

54:                                               ; preds = %45, %51
  %55 = phi i8* [ null, %45 ], [ %53, %51 ]
  %56 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %48, i32 0, i32 1
  %57 = ptrtoint i64* %56 to i64
  %58 = icmp eq i8* null, %55
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = call i8* @_sym_build_integer(i64 %57, i8 64)
  %61 = call i8* @_sym_build_equal(i8* %55, i8* %60)
  call void @_sym_push_path_constraint(i8* %61, i1 true, i64 16742632, i32 39, i32 59)
  br label %62

62:                                               ; preds = %54, %59
  %63 = ptrtoint i64* %56 to i64
  %64 = call i8* @_sym_read_memory(i64 %63, i64 8, i8 1)
  %65 = load i64, i64* %56, align 8
  %66 = icmp eq i8* null, %64
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = call i8* @_sym_build_integer(i64 64, i8 64)
  %69 = call i8* @_sym_build_unsigned_greater_equal(i8* %64, i8* %68)
  br label %70

70:                                               ; preds = %62, %67
  %71 = phi i8* [ null, %62 ], [ %69, %67 ]
  %72 = icmp uge i64 %65, 64
  %73 = icmp eq i8* null, %71
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void @_sym_push_path_constraint(i8* %71, i1 %72, i64 16735496, i32 39, i32 60)
  br label %75

75:                                               ; preds = %70, %74
  br i1 %72, label %76, label %170

76:                                               ; preds = %75
  call void @_sym_notify_basic_block(i64 16735168)
  %77 = ptrtoint i8** %6 to i64
  %78 = call i8* @_sym_read_memory(i64 %77, i64 8, i8 1)
  %79 = load i8*, i8** %6, align 8
  %80 = ptrtoint %struct.buffer_state** %7 to i64
  %81 = call i8* @_sym_read_memory(i64 %80, i64 8, i8 1)
  %82 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %83 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %82, i32 0, i32 0
  %84 = ptrtoint i8** %83 to i64
  %85 = icmp eq i8* null, %81
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = call i8* @_sym_build_integer(i64 %84, i8 64)
  %88 = call i8* @_sym_build_equal(i8* %81, i8* %87)
  call void @_sym_push_path_constraint(i8* %88, i1 true, i64 16743080, i32 39, i32 61)
  br label %89

89:                                               ; preds = %76, %86
  %90 = ptrtoint i8** %83 to i64
  %91 = call i8* @_sym_read_memory(i64 %90, i64 8, i8 1)
  %92 = load i8*, i8** %83, align 8
  %93 = ptrtoint i8* %79 to i64
  %94 = icmp eq i8* null, %78
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = call i8* @_sym_build_integer(i64 %93, i8 64)
  %97 = call i8* @_sym_build_equal(i8* %78, i8* %96)
  call void @_sym_push_path_constraint(i8* %97, i1 true, i64 16742840, i32 39, i32 62)
  br label %98

98:                                               ; preds = %89, %95
  %99 = ptrtoint i8* %92 to i64
  %100 = icmp eq i8* null, %91
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = call i8* @_sym_build_integer(i64 %99, i8 64)
  %103 = call i8* @_sym_build_equal(i8* %91, i8* %102)
  call void @_sym_push_path_constraint(i8* %103, i1 true, i64 16743192, i32 39, i32 63)
  br label %104

104:                                              ; preds = %98, %101
  call void @_sym_memcpy(i8* %79, i8* %92, i64 64)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %79, i8* align 1 %92, i64 64, i1 false)
  %105 = ptrtoint %struct.buffer_state** %7 to i64
  %106 = call i8* @_sym_read_memory(i64 %105, i64 8, i8 1)
  %107 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %108 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %107, i32 0, i32 0
  %109 = ptrtoint i8** %108 to i64
  %110 = icmp eq i8* null, %106
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = call i8* @_sym_build_integer(i64 %109, i8 64)
  %113 = call i8* @_sym_build_equal(i8* %106, i8* %112)
  call void @_sym_push_path_constraint(i8* %113, i1 true, i64 16744152, i32 39, i32 64)
  br label %114

114:                                              ; preds = %104, %111
  %115 = ptrtoint i8** %108 to i64
  %116 = call i8* @_sym_read_memory(i64 %115, i64 8, i8 1)
  %117 = load i8*, i8** %108, align 8
  %118 = icmp eq i8* null, %116
  %119 = and i1 true, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = call i8* @_sym_build_integer(i64 64, i8 64)
  %122 = call i8* @_sym_build_integer(i64 1, i8 64)
  %123 = call i8* @_sym_build_mul(i8* %121, i8* %122)
  %124 = call i8* @_sym_build_add(i8* %123, i8* %116)
  br label %125

125:                                              ; preds = %114, %120
  %126 = phi i8* [ null, %114 ], [ %124, %120 ]
  %127 = getelementptr inbounds i8, i8* %117, i64 64
  %128 = ptrtoint i8** %108 to i64
  %129 = icmp eq i8* null, %106
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = call i8* @_sym_build_integer(i64 %128, i8 64)
  %132 = call i8* @_sym_build_equal(i8* %106, i8* %131)
  call void @_sym_push_path_constraint(i8* %132, i1 true, i64 16744152, i32 39, i32 65)
  br label %133

133:                                              ; preds = %125, %130
  %134 = ptrtoint i8** %108 to i64
  call void @_sym_write_memory(i64 %134, i64 8, i8* %126, i8 1)
  store i8* %127, i8** %108, align 8
  %135 = ptrtoint %struct.buffer_state** %7 to i64
  %136 = call i8* @_sym_read_memory(i64 %135, i64 8, i8 1)
  %137 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %138 = icmp eq i8* null, %136
  %139 = and i1 true, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %133
  %141 = call i8* @_sym_build_integer(i64 8, i8 64)
  %142 = call i8* @_sym_build_add(i8* %141, i8* %136)
  br label %143

143:                                              ; preds = %133, %140
  %144 = phi i8* [ null, %133 ], [ %142, %140 ]
  %145 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %137, i32 0, i32 1
  %146 = ptrtoint i64* %145 to i64
  %147 = icmp eq i8* null, %144
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = call i8* @_sym_build_integer(i64 %146, i8 64)
  %150 = call i8* @_sym_build_equal(i8* %144, i8* %149)
  call void @_sym_push_path_constraint(i8* %150, i1 true, i64 16744760, i32 39, i32 66)
  br label %151

151:                                              ; preds = %143, %148
  %152 = ptrtoint i64* %145 to i64
  %153 = call i8* @_sym_read_memory(i64 %152, i64 8, i8 1)
  %154 = load i64, i64* %145, align 8
  %155 = icmp eq i8* null, %153
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = call i8* @_sym_build_integer(i64 64, i8 64)
  %158 = call i8* @_sym_build_sub(i8* %153, i8* %157)
  br label %159

159:                                              ; preds = %151, %156
  %160 = phi i8* [ null, %151 ], [ %158, %156 ]
  %161 = sub i64 %154, 64
  %162 = ptrtoint i64* %145 to i64
  %163 = icmp eq i8* null, %144
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = call i8* @_sym_build_integer(i64 %162, i8 64)
  %166 = call i8* @_sym_build_equal(i8* %144, i8* %165)
  call void @_sym_push_path_constraint(i8* %166, i1 true, i64 16744760, i32 39, i32 67)
  br label %167

167:                                              ; preds = %159, %164
  %168 = ptrtoint i64* %145 to i64
  call void @_sym_write_memory(i64 %168, i64 8, i8* %160, i8 1)
  store i64 %161, i64* %145, align 8
  %169 = ptrtoint i32* %5 to i64
  call void @_sym_write_memory(i64 %169, i64 4, i8* null, i8 1)
  store i32 1, i32* %5, align 4
  br label %862

170:                                              ; preds = %75
  call void @_sym_notify_basic_block(i64 16742384)
  %171 = ptrtoint i8** %6 to i64
  %172 = call i8* @_sym_read_memory(i64 %171, i64 8, i8 1)
  %173 = load i8*, i8** %6, align 8
  %174 = ptrtoint %struct.buffer_state** %7 to i64
  %175 = call i8* @_sym_read_memory(i64 %174, i64 8, i8 1)
  %176 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %177 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %176, i32 0, i32 0
  %178 = ptrtoint i8** %177 to i64
  %179 = icmp eq i8* null, %175
  br i1 %179, label %183, label %180

180:                                              ; preds = %170
  %181 = call i8* @_sym_build_integer(i64 %178, i8 64)
  %182 = call i8* @_sym_build_equal(i8* %175, i8* %181)
  call void @_sym_push_path_constraint(i8* %182, i1 true, i64 16745560, i32 39, i32 68)
  br label %183

183:                                              ; preds = %170, %180
  %184 = ptrtoint i8** %177 to i64
  %185 = call i8* @_sym_read_memory(i64 %184, i64 8, i8 1)
  %186 = load i8*, i8** %177, align 8
  %187 = ptrtoint %struct.buffer_state** %7 to i64
  %188 = call i8* @_sym_read_memory(i64 %187, i64 8, i8 1)
  %189 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %190 = icmp eq i8* null, %188
  %191 = and i1 true, %190
  br i1 %191, label %195, label %192

192:                                              ; preds = %183
  %193 = call i8* @_sym_build_integer(i64 8, i8 64)
  %194 = call i8* @_sym_build_add(i8* %193, i8* %188)
  br label %195

195:                                              ; preds = %183, %192
  %196 = phi i8* [ null, %183 ], [ %194, %192 ]
  %197 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %189, i32 0, i32 1
  %198 = ptrtoint i64* %197 to i64
  %199 = icmp eq i8* null, %196
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = call i8* @_sym_build_integer(i64 %198, i8 64)
  %202 = call i8* @_sym_build_equal(i8* %196, i8* %201)
  call void @_sym_push_path_constraint(i8* %202, i1 true, i64 16745912, i32 39, i32 69)
  br label %203

203:                                              ; preds = %195, %200
  %204 = ptrtoint i64* %197 to i64
  %205 = call i8* @_sym_read_memory(i64 %204, i64 8, i8 1)
  %206 = load i64, i64* %197, align 8
  %207 = ptrtoint i8* %173 to i64
  %208 = icmp eq i8* null, %172
  br i1 %208, label %212, label %209

209:                                              ; preds = %203
  %210 = call i8* @_sym_build_integer(i64 %207, i8 64)
  %211 = call i8* @_sym_build_equal(i8* %172, i8* %210)
  call void @_sym_push_path_constraint(i8* %211, i1 true, i64 16745320, i32 39, i32 70)
  br label %212

212:                                              ; preds = %203, %209
  %213 = ptrtoint i8* %186 to i64
  %214 = icmp eq i8* null, %185
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = call i8* @_sym_build_integer(i64 %213, i8 64)
  %217 = call i8* @_sym_build_equal(i8* %185, i8* %216)
  call void @_sym_push_path_constraint(i8* %217, i1 true, i64 16745672, i32 39, i32 71)
  br label %218

218:                                              ; preds = %212, %215
  %219 = icmp eq i8* null, %205
  br i1 %219, label %223, label %220

220:                                              ; preds = %218
  %221 = call i8* @_sym_build_integer(i64 %206, i8 64)
  %222 = call i8* @_sym_build_equal(i8* %205, i8* %221)
  call void @_sym_push_path_constraint(i8* %222, i1 true, i64 16746024, i32 39, i32 72)
  br label %223

223:                                              ; preds = %218, %220
  call void @_sym_memcpy(i8* %173, i8* %186, i64 %206)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 1 %186, i64 %206, i1 false)
  %224 = ptrtoint %struct.buffer_state** %7 to i64
  %225 = call i8* @_sym_read_memory(i64 %224, i64 8, i8 1)
  %226 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %227 = icmp eq i8* null, %225
  %228 = and i1 true, %227
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = call i8* @_sym_build_integer(i64 8, i8 64)
  %231 = call i8* @_sym_build_add(i8* %230, i8* %225)
  br label %232

232:                                              ; preds = %223, %229
  %233 = phi i8* [ null, %223 ], [ %231, %229 ]
  %234 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %226, i32 0, i32 1
  %235 = ptrtoint i64* %234 to i64
  %236 = icmp eq i8* null, %233
  br i1 %236, label %240, label %237

237:                                              ; preds = %232
  %238 = call i8* @_sym_build_integer(i64 %235, i8 64)
  %239 = call i8* @_sym_build_equal(i8* %233, i8* %238)
  call void @_sym_push_path_constraint(i8* %239, i1 true, i64 16746472, i32 39, i32 73)
  br label %240

240:                                              ; preds = %232, %237
  %241 = ptrtoint i64* %234 to i64
  %242 = call i8* @_sym_read_memory(i64 %241, i64 8, i8 1)
  %243 = load i64, i64* %234, align 8
  %244 = ptrtoint i8** %6 to i64
  %245 = call i8* @_sym_read_memory(i64 %244, i64 8, i8 1)
  %246 = load i8*, i8** %6, align 8
  %247 = icmp eq i8* null, %242
  %248 = icmp eq i8* null, %245
  %249 = and i1 %247, %248
  br i1 %249, label %263, label %250

250:                                              ; preds = %240
  br i1 %247, label %251, label %253

251:                                              ; preds = %250
  %252 = call i8* @_sym_build_integer(i64 %243, i8 64)
  br label %253

253:                                              ; preds = %250, %251
  %254 = phi i8* [ %242, %250 ], [ %252, %251 ]
  %255 = call i8* @_sym_build_integer(i64 1, i8 64)
  br i1 %248, label %256, label %259

256:                                              ; preds = %253
  %257 = ptrtoint i8* %246 to i64
  %258 = call i8* @_sym_build_integer(i64 %257, i8 64)
  br label %259

259:                                              ; preds = %253, %256
  %260 = phi i8* [ %245, %253 ], [ %258, %256 ]
  %261 = call i8* @_sym_build_mul(i8* %254, i8* %255)
  %262 = call i8* @_sym_build_add(i8* %261, i8* %260)
  br label %263

263:                                              ; preds = %240, %259
  %264 = phi i8* [ null, %240 ], [ %262, %259 ]
  %265 = getelementptr inbounds i8, i8* %246, i64 %243
  %266 = ptrtoint i8** %6 to i64
  call void @_sym_write_memory(i64 %266, i64 8, i8* %264, i8 1)
  store i8* %265, i8** %6, align 8
  %267 = ptrtoint %struct.buffer_state** %7 to i64
  %268 = call i8* @_sym_read_memory(i64 %267, i64 8, i8 1)
  %269 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %270 = icmp eq i8* null, %268
  %271 = and i1 true, %270
  br i1 %271, label %275, label %272

272:                                              ; preds = %263
  %273 = call i8* @_sym_build_integer(i64 8, i8 64)
  %274 = call i8* @_sym_build_add(i8* %273, i8* %268)
  br label %275

275:                                              ; preds = %263, %272
  %276 = phi i8* [ null, %263 ], [ %274, %272 ]
  %277 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %269, i32 0, i32 1
  %278 = ptrtoint i64* %277 to i64
  %279 = icmp eq i8* null, %276
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = call i8* @_sym_build_integer(i64 %278, i8 64)
  %282 = call i8* @_sym_build_equal(i8* %276, i8* %281)
  call void @_sym_push_path_constraint(i8* %282, i1 true, i64 16747176, i32 39, i32 74)
  br label %283

283:                                              ; preds = %275, %280
  %284 = ptrtoint i64* %277 to i64
  %285 = call i8* @_sym_read_memory(i64 %284, i64 8, i8 1)
  %286 = load i64, i64* %277, align 8
  %287 = icmp eq i8* null, %285
  %288 = and i1 true, %287
  br i1 %288, label %292, label %289

289:                                              ; preds = %283
  %290 = call i8* @_sym_build_integer(i64 64, i8 64)
  %291 = call i8* @_sym_build_sub(i8* %290, i8* %285)
  br label %292

292:                                              ; preds = %283, %289
  %293 = phi i8* [ null, %283 ], [ %291, %289 ]
  %294 = sub i64 64, %286
  %295 = ptrtoint i64* %8 to i64
  call void @_sym_write_memory(i64 %295, i64 8, i8* %293, i8 1)
  store i64 %294, i64* %8, align 8
  %296 = ptrtoint %struct.buffer_state** %7 to i64
  %297 = call i8* @_sym_read_memory(i64 %296, i64 8, i8 1)
  %298 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %299 = icmp eq i8* null, %297
  %300 = and i1 true, %299
  br i1 %300, label %304, label %301

301:                                              ; preds = %292
  %302 = call i8* @_sym_build_integer(i64 8, i8 64)
  %303 = call i8* @_sym_build_add(i8* %302, i8* %297)
  br label %304

304:                                              ; preds = %292, %301
  %305 = phi i8* [ null, %292 ], [ %303, %301 ]
  %306 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %298, i32 0, i32 1
  %307 = ptrtoint i64* %306 to i64
  %308 = icmp eq i8* null, %305
  br i1 %308, label %312, label %309

309:                                              ; preds = %304
  %310 = call i8* @_sym_build_integer(i64 %307, i8 64)
  %311 = call i8* @_sym_build_equal(i8* %305, i8* %310)
  call void @_sym_push_path_constraint(i8* %311, i1 true, i64 16747656, i32 39, i32 75)
  br label %312

312:                                              ; preds = %304, %309
  %313 = ptrtoint i64* %306 to i64
  %314 = call i8* @_sym_read_memory(i64 %313, i64 8, i8 1)
  %315 = load i64, i64* %306, align 8
  %316 = ptrtoint %struct.buffer_state** %7 to i64
  %317 = call i8* @_sym_read_memory(i64 %316, i64 8, i8 1)
  %318 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %319 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %318, i32 0, i32 0
  %320 = ptrtoint i8** %319 to i64
  %321 = icmp eq i8* null, %317
  br i1 %321, label %325, label %322

322:                                              ; preds = %312
  %323 = call i8* @_sym_build_integer(i64 %320, i8 64)
  %324 = call i8* @_sym_build_equal(i8* %317, i8* %323)
  call void @_sym_push_path_constraint(i8* %324, i1 true, i64 16748008, i32 39, i32 76)
  br label %325

325:                                              ; preds = %312, %322
  %326 = ptrtoint i8** %319 to i64
  %327 = call i8* @_sym_read_memory(i64 %326, i64 8, i8 1)
  %328 = load i8*, i8** %319, align 8
  %329 = icmp eq i8* null, %314
  %330 = icmp eq i8* null, %327
  %331 = and i1 %329, %330
  br i1 %331, label %345, label %332

332:                                              ; preds = %325
  br i1 %329, label %333, label %335

333:                                              ; preds = %332
  %334 = call i8* @_sym_build_integer(i64 %315, i8 64)
  br label %335

335:                                              ; preds = %332, %333
  %336 = phi i8* [ %314, %332 ], [ %334, %333 ]
  %337 = call i8* @_sym_build_integer(i64 1, i8 64)
  br i1 %330, label %338, label %341

338:                                              ; preds = %335
  %339 = ptrtoint i8* %328 to i64
  %340 = call i8* @_sym_build_integer(i64 %339, i8 64)
  br label %341

341:                                              ; preds = %335, %338
  %342 = phi i8* [ %327, %335 ], [ %340, %338 ]
  %343 = call i8* @_sym_build_mul(i8* %336, i8* %337)
  %344 = call i8* @_sym_build_add(i8* %343, i8* %342)
  br label %345

345:                                              ; preds = %325, %341
  %346 = phi i8* [ null, %325 ], [ %344, %341 ]
  %347 = getelementptr inbounds i8, i8* %328, i64 %315
  %348 = ptrtoint i8** %319 to i64
  %349 = icmp eq i8* null, %317
  br i1 %349, label %353, label %350

350:                                              ; preds = %345
  %351 = call i8* @_sym_build_integer(i64 %348, i8 64)
  %352 = call i8* @_sym_build_equal(i8* %317, i8* %351)
  call void @_sym_push_path_constraint(i8* %352, i1 true, i64 16748008, i32 39, i32 77)
  br label %353

353:                                              ; preds = %345, %350
  %354 = ptrtoint i8** %319 to i64
  call void @_sym_write_memory(i64 %354, i64 8, i8* %346, i8 1)
  store i8* %347, i8** %319, align 8
  %355 = ptrtoint %struct.buffer_state** %7 to i64
  %356 = call i8* @_sym_read_memory(i64 %355, i64 8, i8 1)
  %357 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %358 = icmp eq i8* null, %356
  %359 = and i1 true, %358
  br i1 %359, label %363, label %360

360:                                              ; preds = %353
  %361 = call i8* @_sym_build_integer(i64 8, i8 64)
  %362 = call i8* @_sym_build_add(i8* %361, i8* %356)
  br label %363

363:                                              ; preds = %353, %360
  %364 = phi i8* [ null, %353 ], [ %362, %360 ]
  %365 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %357, i32 0, i32 1
  %366 = ptrtoint i64* %365 to i64
  %367 = icmp eq i8* null, %364
  br i1 %367, label %371, label %368

368:                                              ; preds = %363
  %369 = call i8* @_sym_build_integer(i64 %366, i8 64)
  %370 = call i8* @_sym_build_equal(i8* %364, i8* %369)
  call void @_sym_push_path_constraint(i8* %370, i1 true, i64 16748616, i32 39, i32 78)
  br label %371

371:                                              ; preds = %363, %368
  %372 = ptrtoint i64* %365 to i64
  call void @_sym_write_memory(i64 %372, i64 8, i8* null, i8 1)
  store i64 0, i64* %365, align 8
  %373 = ptrtoint %struct.buffer_state** %7 to i64
  %374 = call i8* @_sym_read_memory(i64 %373, i64 8, i8 1)
  %375 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %376 = icmp eq i8* null, %374
  %377 = and i1 true, %376
  br i1 %377, label %381, label %378

378:                                              ; preds = %371
  %379 = call i8* @_sym_build_integer(i64 24, i8 64)
  %380 = call i8* @_sym_build_add(i8* %379, i8* %374)
  br label %381

381:                                              ; preds = %371, %378
  %382 = phi i8* [ null, %371 ], [ %380, %378 ]
  %383 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %375, i32 0, i32 3
  %384 = ptrtoint i32* %383 to i64
  %385 = icmp eq i8* null, %382
  br i1 %385, label %389, label %386

386:                                              ; preds = %381
  %387 = call i8* @_sym_build_integer(i64 %384, i8 64)
  %388 = call i8* @_sym_build_equal(i8* %382, i8* %387)
  call void @_sym_push_path_constraint(i8* %388, i1 true, i64 16749160, i32 39, i32 79)
  br label %389

389:                                              ; preds = %381, %386
  %390 = ptrtoint i32* %383 to i64
  %391 = call i8* @_sym_read_memory(i64 %390, i64 4, i8 1)
  %392 = load i32, i32* %383, align 8
  %393 = icmp eq i8* null, %391
  br i1 %393, label %397, label %394

394:                                              ; preds = %389
  %395 = call i8* @_sym_build_integer(i64 0, i8 32)
  %396 = call i8* @_sym_build_not_equal(i8* %391, i8* %395)
  br label %397

397:                                              ; preds = %389, %394
  %398 = phi i8* [ null, %389 ], [ %396, %394 ]
  %399 = icmp ne i32 %392, 0
  %400 = icmp eq i8* null, %398
  br i1 %400, label %402, label %401

401:                                              ; preds = %397
  call void @_sym_push_path_constraint(i8* %398, i1 %399, i64 16749416, i32 39, i32 80)
  br label %402

402:                                              ; preds = %397, %401
  br i1 %399, label %455, label %403

403:                                              ; preds = %402
  call void @_sym_notify_basic_block(i64 16748832)
  %404 = ptrtoint i8** %6 to i64
  %405 = call i8* @_sym_read_memory(i64 %404, i64 8, i8 1)
  %406 = load i8*, i8** %6, align 8
  %407 = icmp eq i8* null, %405
  %408 = and i1 true, %407
  br i1 %408, label %415, label %409

409:                                              ; preds = %403
  %410 = call i8* @_sym_build_integer(i64 1, i8 32)
  %411 = call i8* @_sym_build_integer(i64 1, i8 64)
  %412 = call i8* @_sym_build_zext(i8* %410, i8 32)
  %413 = call i8* @_sym_build_mul(i8* %412, i8* %411)
  %414 = call i8* @_sym_build_add(i8* %413, i8* %405)
  br label %415

415:                                              ; preds = %403, %409
  %416 = phi i8* [ null, %403 ], [ %414, %409 ]
  %417 = getelementptr inbounds i8, i8* %406, i32 1
  %418 = ptrtoint i8** %6 to i64
  call void @_sym_write_memory(i64 %418, i64 8, i8* %416, i8 1)
  store i8* %417, i8** %6, align 8
  %419 = ptrtoint i8* %406 to i64
  %420 = icmp eq i8* null, %405
  br i1 %420, label %424, label %421

421:                                              ; preds = %415
  %422 = call i8* @_sym_build_integer(i64 %419, i8 64)
  %423 = call i8* @_sym_build_equal(i8* %405, i8* %422)
  call void @_sym_push_path_constraint(i8* %423, i1 true, i64 16749512, i32 39, i32 81)
  br label %424

424:                                              ; preds = %415, %421
  %425 = ptrtoint i8* %406 to i64
  call void @_sym_write_memory(i64 %425, i64 1, i8* null, i8 1)
  store i8 -128, i8* %406, align 1
  %426 = ptrtoint i64* %8 to i64
  %427 = call i8* @_sym_read_memory(i64 %426, i64 8, i8 1)
  %428 = load i64, i64* %8, align 8
  %429 = icmp eq i8* null, %427
  br i1 %429, label %433, label %430

430:                                              ; preds = %424
  %431 = call i8* @_sym_build_integer(i64 1, i8 64)
  %432 = call i8* @_sym_build_sub(i8* %427, i8* %431)
  br label %433

433:                                              ; preds = %424, %430
  %434 = phi i8* [ null, %424 ], [ %432, %430 ]
  %435 = sub i64 %428, 1
  %436 = ptrtoint i64* %8 to i64
  call void @_sym_write_memory(i64 %436, i64 8, i8* %434, i8 1)
  store i64 %435, i64* %8, align 8
  %437 = ptrtoint %struct.buffer_state** %7 to i64
  %438 = call i8* @_sym_read_memory(i64 %437, i64 8, i8 1)
  %439 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %440 = icmp eq i8* null, %438
  %441 = and i1 true, %440
  br i1 %441, label %445, label %442

442:                                              ; preds = %433
  %443 = call i8* @_sym_build_integer(i64 24, i8 64)
  %444 = call i8* @_sym_build_add(i8* %443, i8* %438)
  br label %445

445:                                              ; preds = %433, %442
  %446 = phi i8* [ null, %433 ], [ %444, %442 ]
  %447 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %439, i32 0, i32 3
  %448 = ptrtoint i32* %447 to i64
  %449 = icmp eq i8* null, %446
  br i1 %449, label %453, label %450

450:                                              ; preds = %445
  %451 = call i8* @_sym_build_integer(i64 %448, i8 64)
  %452 = call i8* @_sym_build_equal(i8* %446, i8* %451)
  call void @_sym_push_path_constraint(i8* %452, i1 true, i64 16750360, i32 39, i32 82)
  br label %453

453:                                              ; preds = %445, %450
  %454 = ptrtoint i32* %447 to i64
  call void @_sym_write_memory(i64 %454, i64 4, i8* null, i8 1)
  store i32 1, i32* %447, align 8
  br label %455

455:                                              ; preds = %453, %402
  call void @_sym_notify_basic_block(i64 16748912)
  %456 = ptrtoint i64* %8 to i64
  %457 = call i8* @_sym_read_memory(i64 %456, i64 8, i8 1)
  %458 = load i64, i64* %8, align 8
  %459 = icmp eq i8* null, %457
  br i1 %459, label %463, label %460

460:                                              ; preds = %455
  %461 = call i8* @_sym_build_integer(i64 8, i8 64)
  %462 = call i8* @_sym_build_unsigned_greater_equal(i8* %457, i8* %461)
  br label %463

463:                                              ; preds = %455, %460
  %464 = phi i8* [ null, %455 ], [ %462, %460 ]
  %465 = icmp uge i64 %458, 8
  %466 = icmp eq i8* null, %464
  br i1 %466, label %468, label %467

467:                                              ; preds = %463
  call void @_sym_push_path_constraint(i8* %464, i1 %465, i64 16751176, i32 39, i32 83)
  br label %468

468:                                              ; preds = %463, %467
  br i1 %465, label %469, label %842

469:                                              ; preds = %468
  call void @_sym_notify_basic_block(i64 16750672)
  %470 = ptrtoint i64* %8 to i64
  %471 = call i8* @_sym_read_memory(i64 %470, i64 8, i8 1)
  %472 = load i64, i64* %8, align 8
  %473 = icmp eq i8* null, %471
  br i1 %473, label %477, label %474

474:                                              ; preds = %469
  %475 = call i8* @_sym_build_integer(i64 8, i8 64)
  %476 = call i8* @_sym_build_sub(i8* %471, i8* %475)
  br label %477

477:                                              ; preds = %469, %474
  %478 = phi i8* [ null, %469 ], [ %476, %474 ]
  %479 = sub i64 %472, 8
  %480 = ptrtoint i64* %9 to i64
  call void @_sym_write_memory(i64 %480, i64 8, i8* %478, i8 1)
  store i64 %479, i64* %9, align 8
  %481 = ptrtoint %struct.buffer_state** %7 to i64
  %482 = call i8* @_sym_read_memory(i64 %481, i64 8, i8 1)
  %483 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %484 = icmp eq i8* null, %482
  %485 = and i1 true, %484
  br i1 %485, label %489, label %486

486:                                              ; preds = %477
  %487 = call i8* @_sym_build_integer(i64 16, i8 64)
  %488 = call i8* @_sym_build_add(i8* %487, i8* %482)
  br label %489

489:                                              ; preds = %477, %486
  %490 = phi i8* [ null, %477 ], [ %488, %486 ]
  %491 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %483, i32 0, i32 2
  %492 = ptrtoint i64* %491 to i64
  %493 = icmp eq i8* null, %490
  br i1 %493, label %497, label %494

494:                                              ; preds = %489
  %495 = call i8* @_sym_build_integer(i64 %492, i8 64)
  %496 = call i8* @_sym_build_equal(i8* %490, i8* %495)
  call void @_sym_push_path_constraint(i8* %496, i1 true, i64 16751848, i32 39, i32 84)
  br label %497

497:                                              ; preds = %489, %494
  %498 = ptrtoint i64* %491 to i64
  %499 = call i8* @_sym_read_memory(i64 %498, i64 8, i8 1)
  %500 = load i64, i64* %491, align 8
  %501 = icmp eq i8* null, %499
  br i1 %501, label %505, label %502

502:                                              ; preds = %497
  %503 = call i8* @_sym_build_integer(i64 8, i8 64)
  %504 = call i8* @_sym_build_mul(i8* %499, i8* %503)
  br label %505

505:                                              ; preds = %497, %502
  %506 = phi i8* [ null, %497 ], [ %504, %502 ]
  %507 = mul i64 %500, 8
  %508 = ptrtoint i64* %10 to i64
  call void @_sym_write_memory(i64 %508, i64 8, i8* %506, i8 1)
  store i64 %507, i64* %10, align 8
  %509 = ptrtoint i8** %6 to i64
  %510 = call i8* @_sym_read_memory(i64 %509, i64 8, i8 1)
  %511 = load i8*, i8** %6, align 8
  %512 = ptrtoint i64* %9 to i64
  %513 = call i8* @_sym_read_memory(i64 %512, i64 8, i8 1)
  %514 = load i64, i64* %9, align 8
  %515 = ptrtoint i8* %511 to i64
  %516 = icmp eq i8* null, %510
  br i1 %516, label %520, label %517

517:                                              ; preds = %505
  %518 = call i8* @_sym_build_integer(i64 %515, i8 64)
  %519 = call i8* @_sym_build_equal(i8* %510, i8* %518)
  call void @_sym_push_path_constraint(i8* %519, i1 true, i64 16752296, i32 39, i32 85)
  br label %520

520:                                              ; preds = %505, %517
  %521 = icmp eq i8* null, %513
  br i1 %521, label %525, label %522

522:                                              ; preds = %520
  %523 = call i8* @_sym_build_integer(i64 %514, i8 64)
  %524 = call i8* @_sym_build_equal(i8* %513, i8* %523)
  call void @_sym_push_path_constraint(i8* %524, i1 true, i64 16752392, i32 39, i32 86)
  br label %525

525:                                              ; preds = %520, %522
  call void @_sym_memset(i8* %511, i8* null, i64 %514)
  call void @llvm.memset.p0i8.i64(i8* align 1 %511, i8 0, i64 %514, i1 false)
  %526 = ptrtoint i64* %9 to i64
  %527 = call i8* @_sym_read_memory(i64 %526, i64 8, i8 1)
  %528 = load i64, i64* %9, align 8
  %529 = ptrtoint i8** %6 to i64
  %530 = call i8* @_sym_read_memory(i64 %529, i64 8, i8 1)
  %531 = load i8*, i8** %6, align 8
  %532 = icmp eq i8* null, %527
  %533 = icmp eq i8* null, %530
  %534 = and i1 %532, %533
  br i1 %534, label %548, label %535

535:                                              ; preds = %525
  br i1 %532, label %536, label %538

536:                                              ; preds = %535
  %537 = call i8* @_sym_build_integer(i64 %528, i8 64)
  br label %538

538:                                              ; preds = %535, %536
  %539 = phi i8* [ %527, %535 ], [ %537, %536 ]
  %540 = call i8* @_sym_build_integer(i64 1, i8 64)
  br i1 %533, label %541, label %544

541:                                              ; preds = %538
  %542 = ptrtoint i8* %531 to i64
  %543 = call i8* @_sym_build_integer(i64 %542, i8 64)
  br label %544

544:                                              ; preds = %538, %541
  %545 = phi i8* [ %530, %538 ], [ %543, %541 ]
  %546 = call i8* @_sym_build_mul(i8* %539, i8* %540)
  %547 = call i8* @_sym_build_add(i8* %546, i8* %545)
  br label %548

548:                                              ; preds = %525, %544
  %549 = phi i8* [ null, %525 ], [ %547, %544 ]
  %550 = getelementptr inbounds i8, i8* %531, i64 %528
  %551 = ptrtoint i8** %6 to i64
  call void @_sym_write_memory(i64 %551, i64 8, i8* %549, i8 1)
  store i8* %550, i8** %6, align 8
  %552 = ptrtoint i64* %10 to i64
  %553 = call i8* @_sym_read_memory(i64 %552, i64 8, i8 1)
  %554 = load i64, i64* %10, align 8
  %555 = icmp eq i8* null, %553
  br i1 %555, label %559, label %556

556:                                              ; preds = %548
  %557 = call i8* @_sym_build_integer(i64 56, i8 64)
  %558 = call i8* @_sym_build_logical_shift_right(i8* %553, i8* %557)
  br label %559

559:                                              ; preds = %548, %556
  %560 = phi i8* [ null, %548 ], [ %558, %556 ]
  %561 = lshr i64 %554, 56
  %562 = icmp eq i8* null, %560
  br i1 %562, label %565, label %563

563:                                              ; preds = %559
  %564 = call i8* @_sym_build_trunc(i8* %560, i8 8)
  br label %565

565:                                              ; preds = %559, %563
  %566 = phi i8* [ null, %559 ], [ %564, %563 ]
  %567 = trunc i64 %561 to i8
  %568 = ptrtoint i8** %6 to i64
  %569 = call i8* @_sym_read_memory(i64 %568, i64 8, i8 1)
  %570 = load i8*, i8** %6, align 8
  %571 = getelementptr inbounds i8, i8* %570, i64 0
  %572 = ptrtoint i8* %571 to i64
  %573 = icmp eq i8* null, %569
  br i1 %573, label %577, label %574

574:                                              ; preds = %565
  %575 = call i8* @_sym_build_integer(i64 %572, i8 64)
  %576 = call i8* @_sym_build_equal(i8* %569, i8* %575)
  call void @_sym_push_path_constraint(i8* %576, i1 true, i64 16753616, i32 39, i32 87)
  br label %577

577:                                              ; preds = %565, %574
  %578 = ptrtoint i8* %571 to i64
  call void @_sym_write_memory(i64 %578, i64 1, i8* %566, i8 1)
  store i8 %567, i8* %571, align 1
  %579 = ptrtoint i64* %10 to i64
  %580 = call i8* @_sym_read_memory(i64 %579, i64 8, i8 1)
  %581 = load i64, i64* %10, align 8
  %582 = icmp eq i8* null, %580
  br i1 %582, label %586, label %583

583:                                              ; preds = %577
  %584 = call i8* @_sym_build_integer(i64 48, i8 64)
  %585 = call i8* @_sym_build_logical_shift_right(i8* %580, i8* %584)
  br label %586

586:                                              ; preds = %577, %583
  %587 = phi i8* [ null, %577 ], [ %585, %583 ]
  %588 = lshr i64 %581, 48
  %589 = icmp eq i8* null, %587
  br i1 %589, label %592, label %590

590:                                              ; preds = %586
  %591 = call i8* @_sym_build_trunc(i8* %587, i8 8)
  br label %592

592:                                              ; preds = %586, %590
  %593 = phi i8* [ null, %586 ], [ %591, %590 ]
  %594 = trunc i64 %588 to i8
  %595 = ptrtoint i8** %6 to i64
  %596 = call i8* @_sym_read_memory(i64 %595, i64 8, i8 1)
  %597 = load i8*, i8** %6, align 8
  %598 = icmp eq i8* null, %596
  %599 = and i1 true, %598
  br i1 %599, label %605, label %600

600:                                              ; preds = %592
  %601 = call i8* @_sym_build_integer(i64 1, i8 64)
  %602 = call i8* @_sym_build_integer(i64 1, i8 64)
  %603 = call i8* @_sym_build_mul(i8* %601, i8* %602)
  %604 = call i8* @_sym_build_add(i8* %603, i8* %596)
  br label %605

605:                                              ; preds = %592, %600
  %606 = phi i8* [ null, %592 ], [ %604, %600 ]
  %607 = getelementptr inbounds i8, i8* %597, i64 1
  %608 = ptrtoint i8* %607 to i64
  %609 = icmp eq i8* null, %606
  br i1 %609, label %613, label %610

610:                                              ; preds = %605
  %611 = call i8* @_sym_build_integer(i64 %608, i8 64)
  %612 = call i8* @_sym_build_equal(i8* %606, i8* %611)
  call void @_sym_push_path_constraint(i8* %612, i1 true, i64 16754368, i32 39, i32 88)
  br label %613

613:                                              ; preds = %605, %610
  %614 = ptrtoint i8* %607 to i64
  call void @_sym_write_memory(i64 %614, i64 1, i8* %593, i8 1)
  store i8 %594, i8* %607, align 1
  %615 = ptrtoint i64* %10 to i64
  %616 = call i8* @_sym_read_memory(i64 %615, i64 8, i8 1)
  %617 = load i64, i64* %10, align 8
  %618 = icmp eq i8* null, %616
  br i1 %618, label %622, label %619

619:                                              ; preds = %613
  %620 = call i8* @_sym_build_integer(i64 40, i8 64)
  %621 = call i8* @_sym_build_logical_shift_right(i8* %616, i8* %620)
  br label %622

622:                                              ; preds = %613, %619
  %623 = phi i8* [ null, %613 ], [ %621, %619 ]
  %624 = lshr i64 %617, 40
  %625 = icmp eq i8* null, %623
  br i1 %625, label %628, label %626

626:                                              ; preds = %622
  %627 = call i8* @_sym_build_trunc(i8* %623, i8 8)
  br label %628

628:                                              ; preds = %622, %626
  %629 = phi i8* [ null, %622 ], [ %627, %626 ]
  %630 = trunc i64 %624 to i8
  %631 = ptrtoint i8** %6 to i64
  %632 = call i8* @_sym_read_memory(i64 %631, i64 8, i8 1)
  %633 = load i8*, i8** %6, align 8
  %634 = icmp eq i8* null, %632
  %635 = and i1 true, %634
  br i1 %635, label %641, label %636

636:                                              ; preds = %628
  %637 = call i8* @_sym_build_integer(i64 2, i8 64)
  %638 = call i8* @_sym_build_integer(i64 1, i8 64)
  %639 = call i8* @_sym_build_mul(i8* %637, i8* %638)
  %640 = call i8* @_sym_build_add(i8* %639, i8* %632)
  br label %641

641:                                              ; preds = %628, %636
  %642 = phi i8* [ null, %628 ], [ %640, %636 ]
  %643 = getelementptr inbounds i8, i8* %633, i64 2
  %644 = ptrtoint i8* %643 to i64
  %645 = icmp eq i8* null, %642
  br i1 %645, label %649, label %646

646:                                              ; preds = %641
  %647 = call i8* @_sym_build_integer(i64 %644, i8 64)
  %648 = call i8* @_sym_build_equal(i8* %642, i8* %647)
  call void @_sym_push_path_constraint(i8* %648, i1 true, i64 16755120, i32 39, i32 89)
  br label %649

649:                                              ; preds = %641, %646
  %650 = ptrtoint i8* %643 to i64
  call void @_sym_write_memory(i64 %650, i64 1, i8* %629, i8 1)
  store i8 %630, i8* %643, align 1
  %651 = ptrtoint i64* %10 to i64
  %652 = call i8* @_sym_read_memory(i64 %651, i64 8, i8 1)
  %653 = load i64, i64* %10, align 8
  %654 = icmp eq i8* null, %652
  br i1 %654, label %658, label %655

655:                                              ; preds = %649
  %656 = call i8* @_sym_build_integer(i64 32, i8 64)
  %657 = call i8* @_sym_build_logical_shift_right(i8* %652, i8* %656)
  br label %658

658:                                              ; preds = %649, %655
  %659 = phi i8* [ null, %649 ], [ %657, %655 ]
  %660 = lshr i64 %653, 32
  %661 = icmp eq i8* null, %659
  br i1 %661, label %664, label %662

662:                                              ; preds = %658
  %663 = call i8* @_sym_build_trunc(i8* %659, i8 8)
  br label %664

664:                                              ; preds = %658, %662
  %665 = phi i8* [ null, %658 ], [ %663, %662 ]
  %666 = trunc i64 %660 to i8
  %667 = ptrtoint i8** %6 to i64
  %668 = call i8* @_sym_read_memory(i64 %667, i64 8, i8 1)
  %669 = load i8*, i8** %6, align 8
  %670 = icmp eq i8* null, %668
  %671 = and i1 true, %670
  br i1 %671, label %677, label %672

672:                                              ; preds = %664
  %673 = call i8* @_sym_build_integer(i64 3, i8 64)
  %674 = call i8* @_sym_build_integer(i64 1, i8 64)
  %675 = call i8* @_sym_build_mul(i8* %673, i8* %674)
  %676 = call i8* @_sym_build_add(i8* %675, i8* %668)
  br label %677

677:                                              ; preds = %664, %672
  %678 = phi i8* [ null, %664 ], [ %676, %672 ]
  %679 = getelementptr inbounds i8, i8* %669, i64 3
  %680 = ptrtoint i8* %679 to i64
  %681 = icmp eq i8* null, %678
  br i1 %681, label %685, label %682

682:                                              ; preds = %677
  %683 = call i8* @_sym_build_integer(i64 %680, i8 64)
  %684 = call i8* @_sym_build_equal(i8* %678, i8* %683)
  call void @_sym_push_path_constraint(i8* %684, i1 true, i64 16755872, i32 39, i32 90)
  br label %685

685:                                              ; preds = %677, %682
  %686 = ptrtoint i8* %679 to i64
  call void @_sym_write_memory(i64 %686, i64 1, i8* %665, i8 1)
  store i8 %666, i8* %679, align 1
  %687 = ptrtoint i64* %10 to i64
  %688 = call i8* @_sym_read_memory(i64 %687, i64 8, i8 1)
  %689 = load i64, i64* %10, align 8
  %690 = icmp eq i8* null, %688
  br i1 %690, label %694, label %691

691:                                              ; preds = %685
  %692 = call i8* @_sym_build_integer(i64 24, i8 64)
  %693 = call i8* @_sym_build_logical_shift_right(i8* %688, i8* %692)
  br label %694

694:                                              ; preds = %685, %691
  %695 = phi i8* [ null, %685 ], [ %693, %691 ]
  %696 = lshr i64 %689, 24
  %697 = icmp eq i8* null, %695
  br i1 %697, label %700, label %698

698:                                              ; preds = %694
  %699 = call i8* @_sym_build_trunc(i8* %695, i8 8)
  br label %700

700:                                              ; preds = %694, %698
  %701 = phi i8* [ null, %694 ], [ %699, %698 ]
  %702 = trunc i64 %696 to i8
  %703 = ptrtoint i8** %6 to i64
  %704 = call i8* @_sym_read_memory(i64 %703, i64 8, i8 1)
  %705 = load i8*, i8** %6, align 8
  %706 = icmp eq i8* null, %704
  %707 = and i1 true, %706
  br i1 %707, label %713, label %708

708:                                              ; preds = %700
  %709 = call i8* @_sym_build_integer(i64 4, i8 64)
  %710 = call i8* @_sym_build_integer(i64 1, i8 64)
  %711 = call i8* @_sym_build_mul(i8* %709, i8* %710)
  %712 = call i8* @_sym_build_add(i8* %711, i8* %704)
  br label %713

713:                                              ; preds = %700, %708
  %714 = phi i8* [ null, %700 ], [ %712, %708 ]
  %715 = getelementptr inbounds i8, i8* %705, i64 4
  %716 = ptrtoint i8* %715 to i64
  %717 = icmp eq i8* null, %714
  br i1 %717, label %721, label %718

718:                                              ; preds = %713
  %719 = call i8* @_sym_build_integer(i64 %716, i8 64)
  %720 = call i8* @_sym_build_equal(i8* %714, i8* %719)
  call void @_sym_push_path_constraint(i8* %720, i1 true, i64 16756528, i32 39, i32 91)
  br label %721

721:                                              ; preds = %713, %718
  %722 = ptrtoint i8* %715 to i64
  call void @_sym_write_memory(i64 %722, i64 1, i8* %701, i8 1)
  store i8 %702, i8* %715, align 1
  %723 = ptrtoint i64* %10 to i64
  %724 = call i8* @_sym_read_memory(i64 %723, i64 8, i8 1)
  %725 = load i64, i64* %10, align 8
  %726 = icmp eq i8* null, %724
  br i1 %726, label %730, label %727

727:                                              ; preds = %721
  %728 = call i8* @_sym_build_integer(i64 16, i8 64)
  %729 = call i8* @_sym_build_logical_shift_right(i8* %724, i8* %728)
  br label %730

730:                                              ; preds = %721, %727
  %731 = phi i8* [ null, %721 ], [ %729, %727 ]
  %732 = lshr i64 %725, 16
  %733 = icmp eq i8* null, %731
  br i1 %733, label %736, label %734

734:                                              ; preds = %730
  %735 = call i8* @_sym_build_trunc(i8* %731, i8 8)
  br label %736

736:                                              ; preds = %730, %734
  %737 = phi i8* [ null, %730 ], [ %735, %734 ]
  %738 = trunc i64 %732 to i8
  %739 = ptrtoint i8** %6 to i64
  %740 = call i8* @_sym_read_memory(i64 %739, i64 8, i8 1)
  %741 = load i8*, i8** %6, align 8
  %742 = icmp eq i8* null, %740
  %743 = and i1 true, %742
  br i1 %743, label %749, label %744

744:                                              ; preds = %736
  %745 = call i8* @_sym_build_integer(i64 5, i8 64)
  %746 = call i8* @_sym_build_integer(i64 1, i8 64)
  %747 = call i8* @_sym_build_mul(i8* %745, i8* %746)
  %748 = call i8* @_sym_build_add(i8* %747, i8* %740)
  br label %749

749:                                              ; preds = %736, %744
  %750 = phi i8* [ null, %736 ], [ %748, %744 ]
  %751 = getelementptr inbounds i8, i8* %741, i64 5
  %752 = ptrtoint i8* %751 to i64
  %753 = icmp eq i8* null, %750
  br i1 %753, label %757, label %754

754:                                              ; preds = %749
  %755 = call i8* @_sym_build_integer(i64 %752, i8 64)
  %756 = call i8* @_sym_build_equal(i8* %750, i8* %755)
  call void @_sym_push_path_constraint(i8* %756, i1 true, i64 16757184, i32 39, i32 92)
  br label %757

757:                                              ; preds = %749, %754
  %758 = ptrtoint i8* %751 to i64
  call void @_sym_write_memory(i64 %758, i64 1, i8* %737, i8 1)
  store i8 %738, i8* %751, align 1
  %759 = ptrtoint i64* %10 to i64
  %760 = call i8* @_sym_read_memory(i64 %759, i64 8, i8 1)
  %761 = load i64, i64* %10, align 8
  %762 = icmp eq i8* null, %760
  br i1 %762, label %766, label %763

763:                                              ; preds = %757
  %764 = call i8* @_sym_build_integer(i64 8, i8 64)
  %765 = call i8* @_sym_build_logical_shift_right(i8* %760, i8* %764)
  br label %766

766:                                              ; preds = %757, %763
  %767 = phi i8* [ null, %757 ], [ %765, %763 ]
  %768 = lshr i64 %761, 8
  %769 = icmp eq i8* null, %767
  br i1 %769, label %772, label %770

770:                                              ; preds = %766
  %771 = call i8* @_sym_build_trunc(i8* %767, i8 8)
  br label %772

772:                                              ; preds = %766, %770
  %773 = phi i8* [ null, %766 ], [ %771, %770 ]
  %774 = trunc i64 %768 to i8
  %775 = ptrtoint i8** %6 to i64
  %776 = call i8* @_sym_read_memory(i64 %775, i64 8, i8 1)
  %777 = load i8*, i8** %6, align 8
  %778 = icmp eq i8* null, %776
  %779 = and i1 true, %778
  br i1 %779, label %785, label %780

780:                                              ; preds = %772
  %781 = call i8* @_sym_build_integer(i64 6, i8 64)
  %782 = call i8* @_sym_build_integer(i64 1, i8 64)
  %783 = call i8* @_sym_build_mul(i8* %781, i8* %782)
  %784 = call i8* @_sym_build_add(i8* %783, i8* %776)
  br label %785

785:                                              ; preds = %772, %780
  %786 = phi i8* [ null, %772 ], [ %784, %780 ]
  %787 = getelementptr inbounds i8, i8* %777, i64 6
  %788 = ptrtoint i8* %787 to i64
  %789 = icmp eq i8* null, %786
  br i1 %789, label %793, label %790

790:                                              ; preds = %785
  %791 = call i8* @_sym_build_integer(i64 %788, i8 64)
  %792 = call i8* @_sym_build_equal(i8* %786, i8* %791)
  call void @_sym_push_path_constraint(i8* %792, i1 true, i64 16757840, i32 39, i32 93)
  br label %793

793:                                              ; preds = %785, %790
  %794 = ptrtoint i8* %787 to i64
  call void @_sym_write_memory(i64 %794, i64 1, i8* %773, i8 1)
  store i8 %774, i8* %787, align 1
  %795 = ptrtoint i64* %10 to i64
  %796 = call i8* @_sym_read_memory(i64 %795, i64 8, i8 1)
  %797 = load i64, i64* %10, align 8
  %798 = icmp eq i8* null, %796
  br i1 %798, label %801, label %799

799:                                              ; preds = %793
  %800 = call i8* @_sym_build_trunc(i8* %796, i8 8)
  br label %801

801:                                              ; preds = %793, %799
  %802 = phi i8* [ null, %793 ], [ %800, %799 ]
  %803 = trunc i64 %797 to i8
  %804 = ptrtoint i8** %6 to i64
  %805 = call i8* @_sym_read_memory(i64 %804, i64 8, i8 1)
  %806 = load i8*, i8** %6, align 8
  %807 = icmp eq i8* null, %805
  %808 = and i1 true, %807
  br i1 %808, label %814, label %809

809:                                              ; preds = %801
  %810 = call i8* @_sym_build_integer(i64 7, i8 64)
  %811 = call i8* @_sym_build_integer(i64 1, i8 64)
  %812 = call i8* @_sym_build_mul(i8* %810, i8* %811)
  %813 = call i8* @_sym_build_add(i8* %812, i8* %805)
  br label %814

814:                                              ; preds = %801, %809
  %815 = phi i8* [ null, %801 ], [ %813, %809 ]
  %816 = getelementptr inbounds i8, i8* %806, i64 7
  %817 = ptrtoint i8* %816 to i64
  %818 = icmp eq i8* null, %815
  br i1 %818, label %822, label %819

819:                                              ; preds = %814
  %820 = call i8* @_sym_build_integer(i64 %817, i8 64)
  %821 = call i8* @_sym_build_equal(i8* %815, i8* %820)
  call void @_sym_push_path_constraint(i8* %821, i1 true, i64 16758384, i32 39, i32 94)
  br label %822

822:                                              ; preds = %814, %819
  %823 = ptrtoint i8* %816 to i64
  call void @_sym_write_memory(i64 %823, i64 1, i8* %802, i8 1)
  store i8 %803, i8* %816, align 1
  %824 = ptrtoint %struct.buffer_state** %7 to i64
  %825 = call i8* @_sym_read_memory(i64 %824, i64 8, i8 1)
  %826 = load %struct.buffer_state*, %struct.buffer_state** %7, align 8
  %827 = icmp eq i8* null, %825
  %828 = and i1 true, %827
  br i1 %828, label %832, label %829

829:                                              ; preds = %822
  %830 = call i8* @_sym_build_integer(i64 28, i8 64)
  %831 = call i8* @_sym_build_add(i8* %830, i8* %825)
  br label %832

832:                                              ; preds = %822, %829
  %833 = phi i8* [ null, %822 ], [ %831, %829 ]
  %834 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %826, i32 0, i32 4
  %835 = ptrtoint i32* %834 to i64
  %836 = icmp eq i8* null, %833
  br i1 %836, label %840, label %837

837:                                              ; preds = %832
  %838 = call i8* @_sym_build_integer(i64 %835, i8 64)
  %839 = call i8* @_sym_build_equal(i8* %833, i8* %838)
  call void @_sym_push_path_constraint(i8* %839, i1 true, i64 16758760, i32 39, i32 95)
  br label %840

840:                                              ; preds = %832, %837
  %841 = ptrtoint i32* %834 to i64
  call void @_sym_write_memory(i64 %841, i64 4, i8* null, i8 1)
  store i32 1, i32* %834, align 4
  br label %860

842:                                              ; preds = %468
  call void @_sym_notify_basic_block(i64 16750832)
  %843 = ptrtoint i8** %6 to i64
  %844 = call i8* @_sym_read_memory(i64 %843, i64 8, i8 1)
  %845 = load i8*, i8** %6, align 8
  %846 = ptrtoint i64* %8 to i64
  %847 = call i8* @_sym_read_memory(i64 %846, i64 8, i8 1)
  %848 = load i64, i64* %8, align 8
  %849 = ptrtoint i8* %845 to i64
  %850 = icmp eq i8* null, %844
  br i1 %850, label %854, label %851

851:                                              ; preds = %842
  %852 = call i8* @_sym_build_integer(i64 %849, i8 64)
  %853 = call i8* @_sym_build_equal(i8* %844, i8* %852)
  call void @_sym_push_path_constraint(i8* %853, i1 true, i64 16759096, i32 39, i32 96)
  br label %854

854:                                              ; preds = %842, %851
  %855 = icmp eq i8* null, %847
  br i1 %855, label %859, label %856

856:                                              ; preds = %854
  %857 = call i8* @_sym_build_integer(i64 %848, i8 64)
  %858 = call i8* @_sym_build_equal(i8* %847, i8* %857)
  call void @_sym_push_path_constraint(i8* %858, i1 true, i64 16759192, i32 39, i32 97)
  br label %859

859:                                              ; preds = %854, %856
  call void @_sym_memset(i8* %845, i8* null, i64 %848)
  call void @llvm.memset.p0i8.i64(i8* align 1 %845, i8 0, i64 %848, i1 false)
  br label %860

860:                                              ; preds = %859, %840
  call void @_sym_notify_basic_block(i64 16750752)
  %861 = ptrtoint i32* %5 to i64
  call void @_sym_write_memory(i64 %861, i64 4, i8* null, i8 1)
  store i32 1, i32* %5, align 4
  br label %862

862:                                              ; preds = %860, %167, %43
  call void @_sym_notify_basic_block(i64 16737744)
  %863 = ptrtoint i32* %5 to i64
  %864 = call i8* @_sym_read_memory(i64 %863, i64 4, i8 1)
  %865 = load i32, i32* %5, align 4
  call void @_sym_set_return_expression(i8* %864)
  ret i32 %865
}

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @right_rot(i32 %0, i32 %1) #0 {
  call void @_sym_notify_basic_block(i64 16741040)
  %3 = call i8* @_sym_get_parameter_expression(i8 0)
  %4 = call i8* @_sym_get_parameter_expression(i8 1)
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = ptrtoint i32* %5 to i64
  call void @_sym_write_memory(i64 %7, i64 4, i8* %3, i8 1)
  store i32 %0, i32* %5, align 4
  %8 = ptrtoint i32* %6 to i64
  call void @_sym_write_memory(i64 %8, i64 4, i8* %4, i8 1)
  store i32 %1, i32* %6, align 4
  %9 = ptrtoint i32* %5 to i64
  %10 = call i8* @_sym_read_memory(i64 %9, i64 4, i8 1)
  %11 = load i32, i32* %5, align 4
  %12 = ptrtoint i32* %6 to i64
  %13 = call i8* @_sym_read_memory(i64 %12, i64 4, i8 1)
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i8* null, %10
  %16 = icmp eq i8* null, %13
  %17 = and i1 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %2
  br i1 %15, label %19, label %22

19:                                               ; preds = %18
  %20 = zext i32 %11 to i64
  %21 = call i8* @_sym_build_integer(i64 %20, i8 32)
  br label %22

22:                                               ; preds = %18, %19
  %23 = phi i8* [ %10, %18 ], [ %21, %19 ]
  br i1 %16, label %24, label %27

24:                                               ; preds = %22
  %25 = zext i32 %14 to i64
  %26 = call i8* @_sym_build_integer(i64 %25, i8 32)
  br label %27

27:                                               ; preds = %22, %24
  %28 = phi i8* [ %13, %22 ], [ %26, %24 ]
  %29 = call i8* @_sym_build_logical_shift_right(i8* %23, i8* %28)
  br label %30

30:                                               ; preds = %2, %27
  %31 = phi i8* [ null, %2 ], [ %29, %27 ]
  %32 = lshr i32 %11, %14
  %33 = ptrtoint i32* %5 to i64
  %34 = call i8* @_sym_read_memory(i64 %33, i64 4, i8 1)
  %35 = load i32, i32* %5, align 4
  %36 = ptrtoint i32* %6 to i64
  %37 = call i8* @_sym_read_memory(i64 %36, i64 4, i8 1)
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i8* null, %37
  %40 = and i1 true, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %30
  %42 = call i8* @_sym_build_integer(i64 32, i8 32)
  %43 = call i8* @_sym_build_sub(i8* %42, i8* %37)
  br label %44

44:                                               ; preds = %30, %41
  %45 = phi i8* [ null, %30 ], [ %43, %41 ]
  %46 = sub i32 32, %38
  %47 = icmp eq i8* null, %34
  %48 = icmp eq i8* null, %45
  %49 = and i1 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  br i1 %47, label %51, label %54

51:                                               ; preds = %50
  %52 = zext i32 %35 to i64
  %53 = call i8* @_sym_build_integer(i64 %52, i8 32)
  br label %54

54:                                               ; preds = %50, %51
  %55 = phi i8* [ %34, %50 ], [ %53, %51 ]
  br i1 %48, label %56, label %59

56:                                               ; preds = %54
  %57 = zext i32 %46 to i64
  %58 = call i8* @_sym_build_integer(i64 %57, i8 32)
  br label %59

59:                                               ; preds = %54, %56
  %60 = phi i8* [ %45, %54 ], [ %58, %56 ]
  %61 = call i8* @_sym_build_shift_left(i8* %55, i8* %60)
  br label %62

62:                                               ; preds = %44, %59
  %63 = phi i8* [ null, %44 ], [ %61, %59 ]
  %64 = shl i32 %35, %46
  %65 = icmp eq i8* null, %31
  %66 = icmp eq i8* null, %63
  %67 = and i1 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %62
  br i1 %65, label %69, label %72

69:                                               ; preds = %68
  %70 = zext i32 %32 to i64
  %71 = call i8* @_sym_build_integer(i64 %70, i8 32)
  br label %72

72:                                               ; preds = %68, %69
  %73 = phi i8* [ %31, %68 ], [ %71, %69 ]
  br i1 %66, label %74, label %77

74:                                               ; preds = %72
  %75 = zext i32 %64 to i64
  %76 = call i8* @_sym_build_integer(i64 %75, i8 32)
  br label %77

77:                                               ; preds = %72, %74
  %78 = phi i8* [ %63, %72 ], [ %76, %74 ]
  %79 = call i8* @_sym_build_or(i8* %73, i8* %78)
  br label %80

80:                                               ; preds = %62, %77
  %81 = phi i8* [ null, %62 ], [ %79, %77 ]
  %82 = or i32 %32, %64
  call void @_sym_set_return_expression(i8* %81)
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  call void @_sym_notify_basic_block(i64 14758992)
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.string_vector*, align 8
  %12 = ptrtoint i32* %3 to i64
  call void @_sym_write_memory(i64 %12, i64 4, i8* null, i8 1)
  store i32 0, i32* %3, align 4
  %13 = ptrtoint i32* %4 to i64
  call void @_sym_write_memory(i64 %13, i64 4, i8* null, i8 1)
  store i32 %0, i32* %4, align 4
  %14 = ptrtoint i8*** %5 to i64
  call void @_sym_write_memory(i64 %14, i64 8, i8* null, i8 1)
  store i8** %1, i8*** %5, align 8
  %15 = ptrtoint i64* %7 to i64
  call void @_sym_write_memory(i64 %15, i64 8, i8* null, i8 1)
  store i64 0, i64* %7, align 8
  %16 = ptrtoint i8*** %5 to i64
  %17 = call i8* @_sym_read_memory(i64 %16, i64 8, i8 1)
  %18 = load i8**, i8*** %5, align 8
  %19 = icmp eq i8* null, %17
  %20 = and i1 true, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = call i8* @_sym_build_integer(i64 1, i8 64)
  %23 = call i8* @_sym_build_integer(i64 8, i8 64)
  %24 = call i8* @_sym_build_mul(i8* %22, i8* %23)
  %25 = call i8* @_sym_build_add(i8* %24, i8* %17)
  br label %26

26:                                               ; preds = %2, %21
  %27 = phi i8* [ null, %2 ], [ %25, %21 ]
  %28 = getelementptr inbounds i8*, i8** %18, i64 1
  %29 = ptrtoint i8** %28 to i64
  %30 = icmp eq i8* null, %27
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call i8* @_sym_build_integer(i64 %29, i8 64)
  %33 = call i8* @_sym_build_equal(i8* %27, i8* %32)
  call void @_sym_push_path_constraint(i8* %33, i1 true, i64 16723184, i32 39, i32 98)
  br label %34

34:                                               ; preds = %26, %31
  %35 = ptrtoint i8** %28 to i64
  %36 = call i8* @_sym_read_memory(i64 %35, i64 8, i8 1)
  %37 = load i8*, i8** %28, align 8
  call void @_sym_notify_call(i64 16723456)
  call void @_sym_set_parameter_expression(i8 0, i8* %36)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_parameter_expression(i8 2, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %38 = call i64 @strtol(i8* %37, i8** null, i32 10) #6
  call void @_sym_notify_ret(i64 16723456)
  %39 = call i8* @_sym_get_return_expression()
  %40 = icmp eq i8* null, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = call i8* @_sym_build_trunc(i8* %39, i8 32)
  br label %43

43:                                               ; preds = %34, %41
  %44 = phi i8* [ null, %34 ], [ %42, %41 ]
  %45 = trunc i64 %38 to i32
  %46 = ptrtoint i32* %8 to i64
  call void @_sym_write_memory(i64 %46, i64 4, i8* %44, i8 1)
  store i32 %45, i32* %8, align 4
  %47 = ptrtoint i32* %8 to i64
  %48 = call i8* @_sym_read_memory(i64 %47, i64 4, i8 1)
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i8* null, %48
  br i1 %50, label %53, label %51

51:                                               ; preds = %43
  %52 = call i8* @_sym_build_sext(i8* %48, i8 32)
  br label %53

53:                                               ; preds = %43, %51
  %54 = phi i8* [ null, %43 ], [ %52, %51 ]
  %55 = sext i32 %49 to i64
  call void @_sym_notify_call(i64 16725664)
  call void @_sym_set_parameter_expression(i8 0, i8* %54)
  call void @_sym_set_return_expression(i8* null)
  %56 = call noalias i8* @malloc_symbolized(i64 %55) #6
  call void @_sym_notify_ret(i64 16725664)
  %57 = call i8* @_sym_get_return_expression()
  %58 = ptrtoint i8** %9 to i64
  call void @_sym_write_memory(i64 %58, i64 8, i8* %57, i8 1)
  store i8* %56, i8** %9, align 8
  %59 = ptrtoint i8** %9 to i64
  %60 = call i8* @_sym_read_memory(i64 %59, i64 8, i8 1)
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i32* %8 to i64
  %63 = call i8* @_sym_read_memory(i64 %62, i64 4, i8 1)
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i8* null, %63
  br i1 %65, label %68, label %66

66:                                               ; preds = %53
  %67 = call i8* @_sym_build_sext(i8* %63, i8 32)
  br label %68

68:                                               ; preds = %53, %66
  %69 = phi i8* [ null, %53 ], [ %67, %66 ]
  %70 = sext i32 %64 to i64
  call void @_sym_notify_call(i64 16726768)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* %60)
  call void @_sym_set_parameter_expression(i8 2, i8* %69)
  call void @_sym_set_return_expression(i8* null)
  %71 = call i64 @read_symbolized(i32 0, i8* %61, i64 %70)
  call void @_sym_notify_ret(i64 16726768)
  %72 = call i8* @_sym_get_return_expression()
  %73 = ptrtoint i32* %8 to i64
  %74 = call i8* @_sym_read_memory(i64 %73, i64 4, i8 1)
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i8* null, %74
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = call i8* @_sym_build_sext(i8* %74, i8 32)
  br label %79

79:                                               ; preds = %68, %77
  %80 = phi i8* [ null, %68 ], [ %78, %77 ]
  %81 = sext i32 %75 to i64
  %82 = icmp eq i8* null, %72
  %83 = icmp eq i8* null, %80
  %84 = and i1 %82, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  br i1 %82, label %86, label %88

86:                                               ; preds = %85
  %87 = call i8* @_sym_build_integer(i64 %71, i8 64)
  br label %88

88:                                               ; preds = %85, %86
  %89 = phi i8* [ %72, %85 ], [ %87, %86 ]
  br i1 %83, label %90, label %92

90:                                               ; preds = %88
  %91 = call i8* @_sym_build_integer(i64 %81, i8 64)
  br label %92

92:                                               ; preds = %88, %90
  %93 = phi i8* [ %80, %88 ], [ %91, %90 ]
  %94 = call i8* @_sym_build_not_equal(i8* %89, i8* %93)
  br label %95

95:                                               ; preds = %79, %92
  %96 = phi i8* [ null, %79 ], [ %94, %92 ]
  %97 = icmp ne i64 %71, %81
  %98 = icmp eq i8* null, %96
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @_sym_push_path_constraint(i8* %96, i1 %97, i64 16725208, i32 39, i32 99)
  br label %100

100:                                              ; preds = %95, %99
  br i1 %97, label %101, label %104

101:                                              ; preds = %100
  call void @_sym_notify_basic_block(i64 16702368)
  call void @_sym_notify_call(i64 16728992)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  call void @_sym_notify_ret(i64 16728992)
  %103 = ptrtoint i32* %3 to i64
  call void @_sym_write_memory(i64 %103, i64 4, i8* null, i8 1)
  store i32 -1, i32* %3, align 4
  br label %216

104:                                              ; preds = %100
  call void @_sym_notify_basic_block(i64 16725872)
  %105 = ptrtoint i32* %10 to i64
  call void @_sym_write_memory(i64 %105, i64 4, i8* null, i8 1)
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %192, %104
  call void @_sym_notify_basic_block(i64 16702256)
  %107 = ptrtoint i32* %10 to i64
  %108 = call i8* @_sym_read_memory(i64 %107, i64 4, i8 1)
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i8* null, %108
  br i1 %110, label %113, label %111

111:                                              ; preds = %106
  %112 = call i8* @_sym_build_sext(i8* %108, i8 32)
  br label %113

113:                                              ; preds = %106, %111
  %114 = phi i8* [ null, %106 ], [ %112, %111 ]
  %115 = sext i32 %109 to i64
  %116 = icmp eq i8* null, %114
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = call i8* @_sym_build_integer(i64 1, i8 64)
  %119 = call i8* @_sym_build_unsigned_less_than(i8* %114, i8* %118)
  br label %120

120:                                              ; preds = %113, %117
  %121 = phi i8* [ null, %113 ], [ %119, %117 ]
  %122 = icmp ult i64 %115, 1
  %123 = icmp eq i8* null, %121
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void @_sym_push_path_constraint(i8* %121, i1 %122, i64 16727464, i32 39, i32 100)
  br label %125

125:                                              ; preds = %120, %124
  br i1 %122, label %126, label %196

126:                                              ; preds = %125
  call void @_sym_notify_basic_block(i64 16729328)
  %127 = ptrtoint i32* %10 to i64
  %128 = call i8* @_sym_read_memory(i64 %127, i64 4, i8 1)
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i8* null, %128
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = call i8* @_sym_build_sext(i8* %128, i8 32)
  br label %133

133:                                              ; preds = %126, %131
  %134 = phi i8* [ null, %126 ], [ %132, %131 ]
  %135 = sext i32 %129 to i64
  %136 = icmp eq i8* null, %134
  br i1 %136, label %142, label %137

137:                                              ; preds = %133
  %138 = call i8* @_sym_build_integer(i64 16, i8 64)
  %139 = call i8* @_sym_build_integer(i64 ptrtoint ([1 x %struct.string_vector]* @STRING_VECTORS to i64), i8 64)
  %140 = call i8* @_sym_build_mul(i8* %134, i8* %138)
  %141 = call i8* @_sym_build_add(i8* %140, i8* %139)
  br label %142

142:                                              ; preds = %133, %137
  %143 = phi i8* [ null, %133 ], [ %141, %137 ]
  %144 = getelementptr inbounds [1 x %struct.string_vector], [1 x %struct.string_vector]* @STRING_VECTORS, i64 0, i64 %135
  %145 = ptrtoint %struct.string_vector** %11 to i64
  call void @_sym_write_memory(i64 %145, i64 8, i8* %143, i8 1)
  store %struct.string_vector* %144, %struct.string_vector** %11, align 8
  %146 = ptrtoint i8** %9 to i64
  %147 = call i8* @_sym_read_memory(i64 %146, i64 8, i8 1)
  %148 = load i8*, i8** %9, align 8
  %149 = ptrtoint %struct.string_vector** %11 to i64
  %150 = call i8* @_sym_read_memory(i64 %149, i64 8, i8 1)
  %151 = load %struct.string_vector*, %struct.string_vector** %11, align 8
  %152 = icmp eq i8* null, %150
  %153 = and i1 true, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %142
  %155 = call i8* @_sym_build_integer(i64 8, i8 64)
  %156 = call i8* @_sym_build_add(i8* %155, i8* %150)
  br label %157

157:                                              ; preds = %142, %154
  %158 = phi i8* [ null, %142 ], [ %156, %154 ]
  %159 = getelementptr inbounds %struct.string_vector, %struct.string_vector* %151, i32 0, i32 1
  %160 = ptrtoint i8** %159 to i64
  %161 = icmp eq i8* null, %158
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = call i8* @_sym_build_integer(i64 %160, i8 64)
  %164 = call i8* @_sym_build_equal(i8* %158, i8* %163)
  call void @_sym_push_path_constraint(i8* %164, i1 true, i64 16733672, i32 39, i32 101)
  br label %165

165:                                              ; preds = %157, %162
  %166 = ptrtoint i8** %159 to i64
  %167 = call i8* @_sym_read_memory(i64 %166, i64 8, i8 1)
  %168 = load i8*, i8** %159, align 8
  call void @_sym_notify_call(i64 16733928)
  call void @_sym_set_parameter_expression(i8 0, i8* %147)
  call void @_sym_set_parameter_expression(i8 1, i8* %167)
  call void @_sym_set_return_expression(i8* null)
  %169 = call i32 @string_test(i8* %148, i8* %168)
  call void @_sym_notify_ret(i64 16733928)
  %170 = call i8* @_sym_get_return_expression()
  %171 = icmp eq i8* null, %170
  br i1 %171, label %175, label %172

172:                                              ; preds = %165
  %173 = call i8* @_sym_build_integer(i64 0, i8 32)
  %174 = call i8* @_sym_build_not_equal(i8* %170, i8* %173)
  br label %175

175:                                              ; preds = %165, %172
  %176 = phi i8* [ null, %165 ], [ %174, %172 ]
  %177 = icmp ne i32 %169, 0
  %178 = icmp eq i8* null, %176
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void @_sym_push_path_constraint(i8* %176, i1 %177, i64 16733192, i32 39, i32 102)
  br label %180

180:                                              ; preds = %175, %179
  br i1 %177, label %181, label %183

181:                                              ; preds = %180
  call void @_sym_notify_basic_block(i64 16629536)
  %182 = ptrtoint i32* %3 to i64
  call void @_sym_write_memory(i64 %182, i64 4, i8* null, i8 1)
  store i32 -1, i32* %3, align 4
  br label %216

183:                                              ; preds = %180
  call void @_sym_notify_basic_block(i64 16654144)
  br label %184

184:                                              ; preds = %183
  call void @_sym_notify_basic_block(i64 16700672)
  %185 = ptrtoint i32* %10 to i64
  %186 = call i8* @_sym_read_memory(i64 %185, i64 4, i8 1)
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i8* null, %186
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = call i8* @_sym_build_integer(i64 1, i8 32)
  %191 = call i8* @_sym_build_add(i8* %186, i8* %190)
  br label %192

192:                                              ; preds = %184, %189
  %193 = phi i8* [ null, %184 ], [ %191, %189 ]
  %194 = add nsw i32 %187, 1
  %195 = ptrtoint i32* %10 to i64
  call void @_sym_write_memory(i64 %195, i64 4, i8* %193, i8 1)
  store i32 %194, i32* %10, align 4
  br label %106

196:                                              ; preds = %125
  call void @_sym_notify_basic_block(i64 16726160)
  %197 = ptrtoint i8** %9 to i64
  %198 = call i8* @_sym_read_memory(i64 %197, i64 8, i8 1)
  %199 = load i8*, i8** %9, align 8
  %200 = icmp eq i8* null, %198
  br i1 %200, label %204, label %201

201:                                              ; preds = %196
  %202 = call i8* @_sym_build_null_pointer()
  %203 = call i8* @_sym_build_not_equal(i8* %198, i8* %202)
  br label %204

204:                                              ; preds = %196, %201
  %205 = phi i8* [ null, %196 ], [ %203, %201 ]
  %206 = icmp ne i8* %199, null
  %207 = icmp eq i8* null, %205
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @_sym_push_path_constraint(i8* %205, i1 %206, i64 16733336, i32 39, i32 103)
  br label %209

209:                                              ; preds = %204, %208
  br i1 %206, label %210, label %214

210:                                              ; preds = %209
  call void @_sym_notify_basic_block(i64 16631312)
  %211 = ptrtoint i8** %9 to i64
  %212 = call i8* @_sym_read_memory(i64 %211, i64 8, i8 1)
  %213 = load i8*, i8** %9, align 8
  call void @_sym_notify_call(i64 16735712)
  call void @_sym_set_parameter_expression(i8 0, i8* %212)
  call void @free(i8* %213) #6
  call void @_sym_notify_ret(i64 16735712)
  br label %214

214:                                              ; preds = %210, %209
  call void @_sym_notify_basic_block(i64 16729744)
  %215 = ptrtoint i32* %3 to i64
  call void @_sym_write_memory(i64 %215, i64 4, i8* null, i8 1)
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %181, %101
  call void @_sym_notify_basic_block(i64 16717232)
  %217 = ptrtoint i32* %3 to i64
  %218 = call i8* @_sym_read_memory(i64 %217, i64 4, i8 1)
  %219 = load i32, i32* %3, align 4
  call void @_sym_set_return_expression(i8* %218)
  ret i32 %219
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc_symbolized(i64) #2

declare dso_local i64 @read_symbolized(i32, i8*, i64) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_test(i8* %0, i8* %1) #0 {
  call void @_sym_notify_basic_block(i64 16771600)
  %3 = call i8* @_sym_get_parameter_expression(i8 0)
  %4 = call i8* @_sym_get_parameter_expression(i8 1)
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [65 x i8], align 16
  %10 = ptrtoint i8** %6 to i64
  call void @_sym_write_memory(i64 %10, i64 8, i8* %3, i8 1)
  store i8* %0, i8** %6, align 8
  %11 = ptrtoint i8** %7 to i64
  call void @_sym_write_memory(i64 %11, i64 8, i8* %4, i8 1)
  store i8* %1, i8** %7, align 8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %13 = ptrtoint i8** %6 to i64
  %14 = call i8* @_sym_read_memory(i64 %13, i64 8, i8 1)
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8** %6 to i64
  %17 = call i8* @_sym_read_memory(i64 %16, i64 8, i8 1)
  %18 = load i8*, i8** %6, align 8
  call void @_sym_notify_call(i64 16774752)
  call void @_sym_set_parameter_expression(i8 0, i8* %17)
  call void @_sym_set_return_expression(i8* null)
  %19 = call i64 @strlen(i8* %18) #7
  call void @_sym_notify_ret(i64 16774752)
  %20 = call i8* @_sym_get_return_expression()
  call void @_sym_notify_call(i64 16774928)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* %14)
  call void @_sym_set_parameter_expression(i8 2, i8* %20)
  call void @calc_sha_256(i8* %12, i8* %15, i64 %19)
  call void @_sym_notify_ret(i64 16774928)
  %21 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  call void @_sym_notify_call(i64 16775832)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @hash_to_string(i8* %21, i8* %22)
  call void @_sym_notify_ret(i64 16775832)
  %23 = ptrtoint i8** %6 to i64
  %24 = call i8* @_sym_read_memory(i64 %23, i64 8, i8 1)
  %25 = load i8*, i8** %6, align 8
  call void @_sym_notify_call(i64 16776344)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* %24)
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  call void @_sym_notify_ret(i64 16776344)
  %27 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  call void @_sym_notify_call(i64 16776968)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %27)
  call void @_sym_notify_ret(i64 16776968)
  %29 = ptrtoint i8** %7 to i64
  %30 = call i8* @_sym_read_memory(i64 %29, i64 8, i8 1)
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i64 0, i64 0
  call void @_sym_notify_call(i64 16778152)
  call void @_sym_set_parameter_expression(i8 0, i8* %30)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_return_expression(i8* null)
  %33 = call i32 @strcmp(i8* %31, i8* %32) #7
  call void @_sym_notify_ret(i64 16778152)
  %34 = call i8* @_sym_get_return_expression()
  %35 = icmp eq i8* null, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %2
  %37 = call i8* @_sym_build_integer(i64 0, i8 32)
  %38 = call i8* @_sym_build_not_equal(i8* %34, i8* %37)
  br label %39

39:                                               ; preds = %2, %36
  %40 = phi i8* [ null, %2 ], [ %38, %36 ]
  %41 = icmp ne i32 %33, 0
  %42 = icmp eq i8* null, %40
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @_sym_push_path_constraint(i8* %40, i1 %41, i64 16777608, i32 39, i32 104)
  br label %44

44:                                               ; preds = %39, %43
  br i1 %41, label %45, label %48

45:                                               ; preds = %44
  call void @_sym_notify_basic_block(i64 15953648)
  call void @_sym_notify_call(i64 16778544)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  call void @_sym_notify_ret(i64 16778544)
  %47 = ptrtoint i32* %5 to i64
  call void @_sym_write_memory(i64 %47, i64 4, i8* null, i8 1)
  store i32 1, i32* %5, align 4
  br label %51

48:                                               ; preds = %44
  call void @_sym_notify_basic_block(i64 16777056)
  call void @_sym_notify_call(i64 16780000)
  call void @_sym_set_parameter_expression(i8 0, i8* null)
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  call void @_sym_notify_ret(i64 16780000)
  %50 = ptrtoint i32* %5 to i64
  call void @_sym_write_memory(i64 %50, i64 4, i8* null, i8 1)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %45
  call void @_sym_notify_basic_block(i64 16771680)
  %52 = ptrtoint i32* %5 to i64
  %53 = call i8* @_sym_read_memory(i64 %52, i64 4, i8 1)
  %54 = load i32, i32* %5, align 4
  call void @_sym_set_return_expression(i8* %53)
  ret i32 %54
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_to_string(i8* %0, i8* %1) #0 {
  call void @_sym_notify_basic_block(i64 16774064)
  %3 = call i8* @_sym_get_parameter_expression(i8 0)
  %4 = call i8* @_sym_get_parameter_expression(i8 1)
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = ptrtoint i8** %5 to i64
  call void @_sym_write_memory(i64 %8, i64 8, i8* %3, i8 1)
  store i8* %0, i8** %5, align 8
  %9 = ptrtoint i8** %6 to i64
  call void @_sym_write_memory(i64 %9, i64 8, i8* %4, i8 1)
  store i8* %1, i8** %6, align 8
  %10 = ptrtoint i64* %7 to i64
  call void @_sym_write_memory(i64 %10, i64 8, i8* null, i8 1)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %108, %2
  call void @_sym_notify_basic_block(i64 16773280)
  %12 = ptrtoint i64* %7 to i64
  %13 = call i8* @_sym_read_memory(i64 %12, i64 8, i8 1)
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i8* null, %13
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = call i8* @_sym_build_integer(i64 32, i8 64)
  %18 = call i8* @_sym_build_unsigned_less_than(i8* %13, i8* %17)
  br label %19

19:                                               ; preds = %11, %16
  %20 = phi i8* [ null, %11 ], [ %18, %16 ]
  %21 = icmp ult i64 %14, 32
  %22 = icmp eq i8* null, %20
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  call void @_sym_push_path_constraint(i8* %20, i1 %21, i64 16777752, i32 39, i32 105)
  br label %24

24:                                               ; preds = %19, %23
  br i1 %21, label %25, label %112

25:                                               ; preds = %24
  call void @_sym_notify_basic_block(i64 16773536)
  %26 = ptrtoint i8** %5 to i64
  %27 = call i8* @_sym_read_memory(i64 %26, i64 8, i8 1)
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8** %6 to i64
  %30 = call i8* @_sym_read_memory(i64 %29, i64 8, i8 1)
  %31 = load i8*, i8** %6, align 8
  %32 = ptrtoint i64* %7 to i64
  %33 = call i8* @_sym_read_memory(i64 %32, i64 8, i8 1)
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i8* null, %33
  %36 = icmp eq i8* null, %30
  %37 = and i1 %35, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %25
  br i1 %35, label %39, label %41

39:                                               ; preds = %38
  %40 = call i8* @_sym_build_integer(i64 %34, i8 64)
  br label %41

41:                                               ; preds = %38, %39
  %42 = phi i8* [ %33, %38 ], [ %40, %39 ]
  %43 = call i8* @_sym_build_integer(i64 1, i8 64)
  br i1 %36, label %44, label %47

44:                                               ; preds = %41
  %45 = ptrtoint i8* %31 to i64
  %46 = call i8* @_sym_build_integer(i64 %45, i8 64)
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi i8* [ %30, %41 ], [ %46, %44 ]
  %49 = call i8* @_sym_build_mul(i8* %42, i8* %43)
  %50 = call i8* @_sym_build_add(i8* %49, i8* %48)
  br label %51

51:                                               ; preds = %25, %47
  %52 = phi i8* [ null, %25 ], [ %50, %47 ]
  %53 = getelementptr inbounds i8, i8* %31, i64 %34
  %54 = ptrtoint i8* %53 to i64
  %55 = icmp eq i8* null, %52
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = call i8* @_sym_build_integer(i64 %54, i8 64)
  %58 = call i8* @_sym_build_equal(i8* %52, i8* %57)
  call void @_sym_push_path_constraint(i8* %58, i1 true, i64 16784144, i32 39, i32 106)
  br label %59

59:                                               ; preds = %51, %56
  %60 = ptrtoint i8* %53 to i64
  %61 = call i8* @_sym_read_memory(i64 %60, i64 1, i8 1)
  %62 = load i8, i8* %53, align 1
  %63 = icmp eq i8* null, %61
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = call i8* @_sym_build_zext(i8* %61, i8 24)
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi i8* [ null, %59 ], [ %65, %64 ]
  %68 = zext i8 %62 to i32
  call void @_sym_notify_call(i64 16784688)
  call void @_sym_set_parameter_expression(i8 0, i8* %27)
  call void @_sym_set_parameter_expression(i8 1, i8* null)
  call void @_sym_set_parameter_expression(i8 2, i8* %67)
  call void @_sym_set_return_expression(i8* null)
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %68) #6
  call void @_sym_notify_ret(i64 16784688)
  %70 = call i8* @_sym_get_return_expression()
  %71 = ptrtoint i8** %5 to i64
  %72 = call i8* @_sym_read_memory(i64 %71, i64 8, i8 1)
  %73 = load i8*, i8** %5, align 8
  %74 = icmp eq i8* null, %70
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = call i8* @_sym_build_sext(i8* %70, i8 32)
  br label %77

77:                                               ; preds = %66, %75
  %78 = phi i8* [ null, %66 ], [ %76, %75 ]
  %79 = sext i32 %69 to i64
  %80 = icmp eq i8* null, %78
  %81 = icmp eq i8* null, %72
  %82 = and i1 %80, %81
  br i1 %82, label %96, label %83

83:                                               ; preds = %77
  br i1 %80, label %84, label %86

84:                                               ; preds = %83
  %85 = call i8* @_sym_build_integer(i64 %79, i8 64)
  br label %86

86:                                               ; preds = %83, %84
  %87 = phi i8* [ %78, %83 ], [ %85, %84 ]
  %88 = call i8* @_sym_build_integer(i64 1, i8 64)
  br i1 %81, label %89, label %92

89:                                               ; preds = %86
  %90 = ptrtoint i8* %73 to i64
  %91 = call i8* @_sym_build_integer(i64 %90, i8 64)
  br label %92

92:                                               ; preds = %86, %89
  %93 = phi i8* [ %72, %86 ], [ %91, %89 ]
  %94 = call i8* @_sym_build_mul(i8* %87, i8* %88)
  %95 = call i8* @_sym_build_add(i8* %94, i8* %93)
  br label %96

96:                                               ; preds = %77, %92
  %97 = phi i8* [ null, %77 ], [ %95, %92 ]
  %98 = getelementptr inbounds i8, i8* %73, i64 %79
  %99 = ptrtoint i8** %5 to i64
  call void @_sym_write_memory(i64 %99, i64 8, i8* %97, i8 1)
  store i8* %98, i8** %5, align 8
  br label %100

100:                                              ; preds = %96
  call void @_sym_notify_basic_block(i64 16773456)
  %101 = ptrtoint i64* %7 to i64
  %102 = call i8* @_sym_read_memory(i64 %101, i64 8, i8 1)
  %103 = load i64, i64* %7, align 8
  %104 = icmp eq i8* null, %102
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = call i8* @_sym_build_integer(i64 1, i8 64)
  %107 = call i8* @_sym_build_add(i8* %102, i8* %106)
  br label %108

108:                                              ; preds = %100, %105
  %109 = phi i8* [ null, %100 ], [ %107, %105 ]
  %110 = add i64 %103, 1
  %111 = ptrtoint i64* %7 to i64
  call void @_sym_write_memory(i64 %111, i64 8, i8* %109, i8 1)
  store i64 %110, i64* %7, align 8
  br label %11

112:                                              ; preds = %24
  call void @_sym_notify_basic_block(i64 16761472)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare void @_sym_initialize()

define internal void @__sym_ctor() {
  call void @_sym_initialize()
  ret void
}

declare i8* @_sym_build_integer(i64, i8)

declare i8* @_sym_build_integer128(i64, i64)

declare i8* @_sym_build_float(double, i1)

declare i8* @_sym_build_null_pointer()

declare i8* @_sym_build_true()

declare i8* @_sym_build_false()

declare i8* @_sym_build_bool(i1)

declare i8* @_sym_build_sext(i8*, i8)

declare i8* @_sym_build_zext(i8*, i8)

declare i8* @_sym_build_trunc(i8*, i8)

declare i8* @_sym_build_bswap(i8*)

declare i8* @_sym_build_int_to_float(i8*, i1, i1)

declare i8* @_sym_build_float_to_float(i8*, i1)

declare i8* @_sym_build_bits_to_float(i8*, i1)

declare i8* @_sym_build_float_to_bits(i8*)

declare i8* @_sym_build_float_to_signed_integer(i8*, i8)

declare i8* @_sym_build_float_to_unsigned_integer(i8*, i8)

declare i8* @_sym_build_fp_abs(i8*)

declare i8* @_sym_build_bool_and(i8*, i8*)

declare i8* @_sym_build_bool_or(i8*, i8*)

declare i8* @_sym_build_bool_xor(i8*, i8*)

declare i8* @_sym_build_bool_to_bits(i8*, i8)

declare void @_sym_push_path_constraint(i8*, i1, i64, i32, i32)

declare void @_sym_set_parameter_expression(i8, i8*)

declare i8* @_sym_get_parameter_expression(i8)

declare void @_sym_set_return_expression(i8*)

declare i8* @_sym_get_return_expression()

declare i8* @_sym_build_add(i8*, i8*)

declare i8* @_sym_build_sub(i8*, i8*)

declare i8* @_sym_build_mul(i8*, i8*)

declare i8* @_sym_build_unsigned_div(i8*, i8*)

declare i8* @_sym_build_signed_div(i8*, i8*)

declare i8* @_sym_build_unsigned_rem(i8*, i8*)

declare i8* @_sym_build_signed_rem(i8*, i8*)

declare i8* @_sym_build_shift_left(i8*, i8*)

declare i8* @_sym_build_logical_shift_right(i8*, i8*)

declare i8* @_sym_build_arithmetic_shift_right(i8*, i8*)

declare i8* @_sym_build_and(i8*, i8*)

declare i8* @_sym_build_or(i8*, i8*)

declare i8* @_sym_build_xor(i8*, i8*)

declare i8* @_sym_build_fp_add(i8*, i8*)

declare i8* @_sym_build_fp_sub(i8*, i8*)

declare i8* @_sym_build_fp_mul(i8*, i8*)

declare i8* @_sym_build_fp_div(i8*, i8*)

declare i8* @_sym_build_fp_rem(i8*, i8*)

declare i8* @_sym_build_equal(i8*, i8*)

declare i8* @_sym_build_not_equal(i8*, i8*)

declare i8* @_sym_build_unsigned_greater_than(i8*, i8*)

declare i8* @_sym_build_unsigned_greater_equal(i8*, i8*)

declare i8* @_sym_build_unsigned_less_than(i8*, i8*)

declare i8* @_sym_build_unsigned_less_equal(i8*, i8*)

declare i8* @_sym_build_signed_greater_than(i8*, i8*)

declare i8* @_sym_build_signed_greater_equal(i8*, i8*)

declare i8* @_sym_build_signed_less_than(i8*, i8*)

declare i8* @_sym_build_signed_less_equal(i8*, i8*)

declare i8* @_sym_build_float_ordered_greater_than(i8*, i8*)

declare i8* @_sym_build_float_ordered_greater_equal(i8*, i8*)

declare i8* @_sym_build_float_ordered_less_than(i8*, i8*)

declare i8* @_sym_build_float_ordered_less_equal(i8*, i8*)

declare i8* @_sym_build_float_ordered_equal(i8*, i8*)

declare i8* @_sym_build_float_ordered_not_equal(i8*, i8*)

declare i8* @_sym_build_float_ordered(i8*, i8*)

declare i8* @_sym_build_float_unordered(i8*, i8*)

declare i8* @_sym_build_float_unordered_greater_than(i8*, i8*)

declare i8* @_sym_build_float_unordered_greater_equal(i8*, i8*)

declare i8* @_sym_build_float_unordered_less_than(i8*, i8*)

declare i8* @_sym_build_float_unordered_less_equal(i8*, i8*)

declare i8* @_sym_build_float_unordered_equal(i8*, i8*)

declare i8* @_sym_build_float_unordered_not_equal(i8*, i8*)

declare void @_sym_memcpy(i8*, i8*, i64)

declare void @_sym_memset(i8*, i8*, i64)

declare void @_sym_memmove(i8*, i8*, i64)

declare i8* @_sym_read_memory(i64, i64, i8)

declare void @_sym_write_memory(i64, i64, i8*, i8)

declare i8* @_sym_build_extract(i8*, i64, i64, i8)

declare void @_sym_notify_call(i64)

declare void @_sym_notify_ret(i64)

declare void @_sym_notify_basic_block(i64)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn writeonly }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}

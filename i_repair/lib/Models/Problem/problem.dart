class Problem {
  const Problem(this.name, this.code, this.majorCode);
  final String code;
  final String name;
  final List<String> majorCode;
  @override
  String toString() => name;
}

const List<Problem> problemList = <Problem>[
  Problem("Phát ra tiếng ồn lớn", "P01", ["TL", "MG", "ML"]),
  Problem("Đèn sáng nhưng không chạy", "P02", ["TL", "ML"]),
  Problem("Lốc máy nóng hơn bình thường", "P03", ["TL", "MG", "ML"]),
  Problem("Cửa tủ bị chênh", "P04", ["TL"]),
  Problem("Ngăn đá bám tuyết nhiều", "P05", ["TL"]),
  Problem("Bị chảy nước", "P06", ["TL", "MG", "ML"]),
  Problem("Bản lề cửa bị lệch", "P07", ["TL"]),
  Problem("Ron cửa bị hở", "P08", ["TL", "MG"]),
  Problem("Bị hở các lỗ luồn dây điện, đường ống", "P09", ["TL", "MG", "ML"]),
  Problem("Ngăn đông không hoạt động", "P10", ["TL"]),
  Problem("Chạy liên tục nhưng không lạnh", "P11", ["TL", "ML"]),
  Problem("Lạnh hơn nhiệt độ điều chỉnh", "P12", ["ML"]),
  Problem("Dàn lạnh bẩn", "P13", ["ML"]),
  Problem("Dàn nóng bẩn", "P14", ["ML"]),
  Problem("Chạy và ngưng liên tục", "P15", ["TL", "MG", "ML"]),
  Problem("Không hoạt động", "P16", ["TL", "MG", "ML"]),
  Problem("Có mùi hôi", "P17", ["TL", "MG", "ML"]),
  Problem("Bị xì gas", "P18", ["TL", "ML"]),
  Problem("Quạt dàn nóng không chạy", "P19", ["TL", "ML"]),
  Problem("Rung mạnh", "P20", ["MG"]),
  Problem("Xả tràn nhưng nước không chảy khỏi ống xả", "P21", ["MG"]),
  Problem("Kết thúc quá trình giặt nhưng máy không tự động tắt nguồn", "P22",
      ["MG"]),
  Problem("Thời gian xả nước giặt quá lâu", "P23", ["MG"]),
  Problem("Nước không chảy vào thùng khi giặt và vắt", "P24", ["MG"]),
  Problem("Không thực hiện chức năng vắt", "P25", ["MG"]),
  Problem("Giặt quần áo không sạch", "P26", ["MG"]),
  Problem("Quá trình bơm nước vào rất yếu", "P27", ["MG"]),
  Problem("Xả nước liên tục không ngừng", "P28", ["MG"]),
  Problem("Không đổi được chế độ giặt", "P29", ["MG"]),
  Problem("Chế độ làm nóng nước không hoạt động", "P30", ["MG"]),
  Problem("Vòi nước bị rò rỉ", "P31", ["ON"]),
  Problem("Bồn rửa thoát nước chậm", "P32", ["ON"]),
  Problem("Nghẹt ống cống nhà tắm", "P33", ["ON"]),
  Problem("Tắc bồn cầu nhà vệ sinh", "P34", ["ON"]),
  Problem("Bồn cầu bị rò rỉ nước", "P35", ["ON"]),
  Problem("Máy nước nóng không hoạt động", "P36", ["ON"]),
  Problem("Nước chảy yếu", "P37", ["ON"]),
  Problem("Nghẹt ống xử lý rác thải", "P38", ["ON"]),
  Problem("Bể đường ống nước", "P39", ["ON"]),
  Problem("Cống nước thải bị trào ngược", "P40", ["ON"]),
  Problem("Đường ống thoát nước mưa bị tắc nghẽn", "P41", ["ON"]),
  Problem("Lửa không lên mặc dù đã bật bếp", "P42", ["BG"]),
  Problem("Lửa cháy không đều", "P43", ["BG"]),
  Problem("Lửa cháy nhỏ", "P44", ["BG"]),
  Problem("Lửa bị phựt, có tiếng kêu", "P45", ["BG"]),
  Problem("Lửa bị đỏ", "P46", ["BG"]),
  Problem("Bếp không bắt lửa", "P47", ["BG"]),
  Problem("Lửa cháy không bình thường", "P48", ["BG"]),
  Problem("Có mùi gas", "P49", ["BG"]),
  Problem("Bị tắc gas", "P50", ["BG"]),
  Problem("Xe bị rung mạnh", "P51", ["X2", "X4"]),
  Problem("Chết máy", "P52", ["X2"]),
  Problem("Bể hộp số", "P53", ["X2"]),
  Problem("Bị ngập nước", "P54", ["X2"]),
  Problem("Bị rồ ga", "P55", ["X2"]),
  Problem("Bị nóng máy", "P56", ["X2"]),
  Problem("Bị cháy cầu trì", "P57", ["X2"]),
  Problem("Bị vỡ lốc máy", "P58", ["X2"]),
  Problem("Khó tăng tốc", "P59", ["X2"]),
  Problem("Lốp xe máy bị phồng", "P60", ["X2"]),
  Problem("Bị rỉ nhớt", "P51", ["X2"]),
  Problem("Bị thủng bô", "P52", ["X2"]),
  Problem("Đèn xe không sáng hoặc bị cháy bóng", "P53", ["X2"]),
  Problem("Bị ra khói đen", "P54", ["X2"]),
  Problem("Phanh xe không được", "P55", ["X2"]),
  Problem("Phanh xe quá sâu", "P56", ["X2"]),
  Problem("Lốp xe bị biến dạng", "P57", ["X2"]),
  Problem("Bể bánh xe", "P58", ["X2", "X4"]),
  Problem("Không khởi động được xe", "P59", ["X2"]),
  Problem("Phuột xe không đàn hồi", "P60", ["X2"]),
  Problem("Chết ắc-quy", "P61", ["X4"]),
  Problem("Lốp bị hết hơi", "P62", ["X4"]),
  Problem("Áp suất lốp không đều", "P63", ["X4"]),
  Problem("Phanh có tiếng kêu", "P64", ["X4"]),
  Problem("Vô lăng rung lắc", "P65", ["X4"]),
  Problem("Động cơ quá nóng", "P66", ["X4"]),
  Problem("Hỏng máy phát điện", "P67", ["X4"]),
  Problem("Rò rỉ nhiên liệu", "P68", ["X4"]),
  Problem("Phanh tay bị kẹt", "P69", ["X4"]),
  Problem("Hệ thống gạt nước không chạy", "P70", ["X4"]),
  Problem("Hệ thống làm lạnh không chạy", "P71", ["X4"]),
  Problem("Hệ thống định vị sai", "P72", ["X4"]),
  Problem("Cửa đóng không chặt", "P73", ["X4"]),
  Problem("Màn hình điện tử không hiển thị", "P74", ["X4"]),
  Problem("Đồng hồ xăng không hoạt động", "P75", ["X4"]),
  Problem("Không kết nối được camera trước sau", "P76", ["X4"]),
  Problem("Màn hình xanh", "P77", ["MT"]),
  Problem("Không cài đặt được ứng dụng, phần mềm", "P78", ["MT"]),
  Problem("Bị mất mạng Internet", "P79", ["MT"]),
  Problem("Mất chức năng Manager", "P80", ["MT"]),
  Problem("Máy bị treo", "P81", ["MT"]),
  Problem("Máy quá nóng", "P82", ["MT"]),
  Problem("Không nạp được pin", "P83", ["MT"]),
  Problem("Dung lượng bộ nhớ nhỏ", "P84", ["MT"]),
  Problem("Không kết nối được Wifi", "P85", ["MT"]),
  Problem("Dây cáp lỏng lẻo", "P86", ["MT"]),
  Problem("Máy tính không khởi động", "P87", ["MT"]),
  Problem("Bị màn hình đen sau khi khởi động", "P88", ["MT"]),
  Problem("Máy tính không nhận USB", "P89", ["MT"]),
  Problem("Phát ra tiếng kêu gây ồn", "P90", ["MT"]),
  Problem("Hệ điều hành bị lỗi", "P91", ["MT"]),
  Problem("Máy tự khởi động lại", "P92", ["MT"]),
  Problem("Màn hình máy tính bị nhoè", "P93", ["MT"]),
  Problem("Màn hình máy tính bị xoay ngược", "P94", ["MT"]),
  Problem("Laptop truyền các tập tin quá lâu", "P95", ["MT"]),
  Problem("Màn hình quay ngược 180 độ", "P96", ["MT"]),
  Problem("Bị virus", "P97", ["MT"]),
  Problem("Không tải được các ứng dụng hay file", "P98", ["MT"]),
  Problem("Khác", "P99", ["TL", "X2", "MG", "MT", "X4", "ON", "ML", "BG"]),
];
List<Problem> getProblemsByMajor(String majorCode) {
  List<Problem> list = [];
  for (Problem r in problemList) {
    if (r.majorCode.contains(majorCode)) {
      list.add(r);
    }
  }
  return list;
}

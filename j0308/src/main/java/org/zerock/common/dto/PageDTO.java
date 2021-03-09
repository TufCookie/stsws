package org.zerock.common.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
public class PageDTO {
	
	@Builder.Default
	private int page = 1;
	@Builder.Default
	private int perSheet = 10;
	
	//이렇게 안하려면 생성자로 초기값을 줘야한다.
	
	public int getSkip() {
		
		//Getter로 깔끔하게 만들거나, Validation을 추가해서 예외처리를 한다.
		
		return (page - 1) * perSheet;
		
	}
	
}
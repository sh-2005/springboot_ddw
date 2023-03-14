package com.xh.util;

import java.util.Arrays;

/**
 * 
 * @author others
 * date:2014-8-26  锟斤拷锟斤拷2:17:19
 * 锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷证锟斤拷值锟斤拷锟斤拷证锟诫串
 */
public class SecurityCode {
	/**
	 * 锟斤拷证锟斤拷锟窖度硷拷锟斤拷
	 *   Simple-锟斤拷锟斤拷
	 *   Medium-锟斤拷锟街猴拷小写锟斤拷母 
	 *   Hard-锟斤拷锟街和达拷小写锟斤拷母
	 */
	public enum SecurityCodeLevel {
		Simple, Medium, Hard
	};
	/**
	 * 锟斤拷锟斤拷默锟斤拷锟斤拷证锟诫，4位锟叫碉拷锟窖讹拷
	 *
	 * @return
	 */
	public static String getSecurityCode() {
		return getSecurityCode(4, SecurityCodeLevel.Medium, false);
	}
	/**
	 * 锟斤拷锟斤拷群锟斤拷讯锟斤拷锟斤拷锟斤拷锟斤拷证锟斤拷
	 *
	 * @param length
	 * @param level
	 * @param isCanRepeat
	 * @return
	 */
	private static String getSecurityCode(int length, SecurityCodeLevel level, boolean isCanRepeat) {
		// 锟斤拷锟斤拷取len锟斤拷锟街凤拷
		int len = length;
		// 锟街凤拷希锟�-锟斤拷去锟阶伙拷锟斤拷锟斤拷锟斤拷锟�,1,锟斤拷母l,o,O锟斤拷
		char[] codes = {
				'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
				'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
				'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'
		};
		// 锟斤拷莶锟酵拷讯冉锟饺★拷址锟�
		if (level == SecurityCodeLevel.Simple) {
			codes = Arrays.copyOfRange(codes, 0, 10);
		} else if (level == SecurityCodeLevel.Medium) {
			codes = Arrays.copyOfRange(codes, 0, 36);
		}
		// 锟街凤拷统锟斤拷锟�
		int n = codes.length;
		// 锟阶筹拷锟斤拷锟斤拷时锟届常
		if (len > n && isCanRepeat == false) {
			throw new RuntimeException(String.format("锟斤拷锟斤拷SecurityCode.getSecurityCode(%1$s,%2$s,%3$s)锟斤拷锟斤拷锟届常锟斤拷" + "锟斤拷isCanRepeat为%3$s时锟斤拷锟斤拷锟斤拷锟斤拷锟�1$s锟斤拷锟杰达拷锟斤拷%4$s", len, level, isCanRepeat, n));
		}
		// 锟斤拷懦锟饺★拷锟斤拷锟斤拷锟斤拷址锟�
		char[] result = new char[len];
		// 锟叫讹拷锟杰凤拷锟斤拷锟斤拷馗锟斤拷址锟�
		if (isCanRepeat) {
			for (int i = 0; i < result.length; i++) {
				// 锟斤拷锟斤拷0 and n-1
				int r = (int) (Math.random() * n);
				// 锟斤拷result锟叫的碉拷i锟斤拷元锟斤拷锟斤拷锟斤拷为code[r]锟斤拷诺锟斤拷锟街�
				result[i] = codes[r];
			}
		} else {
			for (int i = 0; i < result.length; i++) {
				// 锟斤拷锟斤拷0 and n-1
				int r = (int) (Math.random() * n);
				// 锟斤拷result锟叫的碉拷i锟斤拷元锟斤拷锟斤拷锟斤拷为code[r]锟斤拷诺锟斤拷锟街�
				result[i] = codes[r];
				// 锟斤拷锟斤拷确锟斤拷锟斤拷锟斤拷锟劫次筹拷取锟斤拷锟角革拷锟街凤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷锟揭伙拷锟斤拷址锟斤拷写code[r],锟斤拷锟斤拷n-1
				codes[r] = codes[n - 1];
				n--;
			}
		}
		return String.valueOf(result);
	}
	public static void main(String[] args) {
		System.out.println(SecurityCode.getSecurityCode());
	}
}
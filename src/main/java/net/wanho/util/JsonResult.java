package net.wanho.util;

import lombok.Data;

import java.awt.print.PrinterAbortException;
import java.security.PrivateKey;

/**
 * Created by dc on 2019/4/18.
 */
@Data
public class JsonResult {
    private Integer status;
    private String msg;
    private Object data;
}

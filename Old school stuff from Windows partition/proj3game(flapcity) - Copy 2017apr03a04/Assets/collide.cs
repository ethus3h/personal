﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class collide : MonoBehaviour
{

    // Use this for initialization
    void Start()
    {

    }
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Pick Up"))
        {
            other.gameObject.SetActive(false);
        }
    }
}
